package user;

import java.io.IOException;
import java.util.Iterator;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;


public class crawling {
	public static void main(String[] args) {
		// Jsoup�� �̿��ؼ� http://www.cgv.co.kr/movies/ ũ�Ѹ�
		String url = "https://www.op.gg/summoner/userName=%EC%8B%AC%ED%95%B4%EB%A1%9C"; //ũ�Ѹ��� url����
		Document doc = null;        //Document���� �������� ��ü �ҽ��� ����ȴ�

		try {
			doc = Jsoup.connect(url).get();
		} catch (IOException e) {
			e.printStackTrace();
		}
		//select�� �̿��Ͽ� ���ϴ� �±׸� �����Ѵ�. select�� ���ϴ� ���� �������� ���� �߿��� ����̴�.
		Elements element = doc.select("div.SummonerRatingMedium");
		Elements element2 = doc.select("div.Header");

		System.out.println("============================================================");

		//Iterator�� ����Ͽ� �ϳ��� �� ��������
		Iterator<Element> ie1 = element.select("div.TierRank").iterator();
		Iterator<Element> ie2 = element.select("span.LeaguePoints").iterator();
		Iterator<Element> ie3 = element.select("span.wins").iterator();
		Iterator<Element> ie4 = element.select("span.losses").iterator();
		Iterator<Element> ie5 = element.select("span.winratio").iterator();
		
		Iterator<Element> ie6 = element2.select("span.Name").iterator();
		Iterator<Element> ie7 = element2.select("span.ranking").iterator();
		Iterator<Element> ie8 = element2.select("div.ProfileIcon").iterator();
		
		System.out.println(ie6.next().text()+"\t"+ie7.next().text()+"\t"+ie8.next().text());
		while (ie1.hasNext()) {
			System.out.println(ie1.next().text() + "\t" + ie2.next().text() + "\t" + ie3.next().text() + "\t"
					+ ie4.next().text() + "\t" + ie5.next().text());
			
		}
		
		System.out.println("============================================================");
	}
}
