package user;

import java.io.IOException;
import java.util.Iterator;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;


public class crawling {
	
	public static Document doc = null;        //Document���� �������� ��ü �ҽ��� ����ȴ�
	public static Iterator<Element> ie1;
	public static Elements element;
	
	public static String Url(String url) {
		url = "https://www.op.gg/summoner/userName=" + url;
		return url;
	}
	
	public static String TierRank(String url) {
		String tierrank;
		try {
			doc = Jsoup.connect(url).get();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		element = doc.select("div.SummonerRatingMedium");
		ie1 = element.select("div.TierRank").iterator();
		tierrank  = ie1.next().text();
		return tierrank;
	}
	
	public static String LeaguePoints(String url) {
		String points;
		try {
			doc = Jsoup.connect(url).get();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		element = doc.select("div.SummonerRatingMedium");
		ie1 = element.select("span.LeaguePoints").iterator();
		points  = ie1.next().text();
		return points;
	}
	
	public static String Wins(String url) {
		String wins;
		try {
			doc = Jsoup.connect(url).get();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		element = doc.select("div.SummonerRatingMedium");
		ie1 = element.select("span.wins").iterator();
		wins = ie1.next().text();
		return wins;
	}
	
	public static String Losses(String url) {
		String losses;
		try {
			doc = Jsoup.connect(url).get();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		element = doc.select("div.SummonerRatingMedium");
		ie1 = element.select("span.losses").iterator();
		losses = ie1.next().text();
		return losses;
	}
	
	public static String Winratio(String url) {
		String winratio;
		try {
			doc = Jsoup.connect(url).get();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		element = doc.select("div.SummonerRatingMedium");
		ie1 = element.select("span.winratio").iterator();
		winratio = ie1.next().text();
		return winratio;
	}
	

	public static String Name(String url) {
		String name;
		try {
			doc = Jsoup.connect(url).get();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		element = doc.select("div.Header");
		ie1 = element.select("span.Name").iterator();
		name = ie1.next().text();
		return name;
	}
	
	public static String Ranking(String url) {
		String ranking;
		try {
			doc = Jsoup.connect(url).get();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		element = doc.select("div.Header");
		ie1 = element.select("span.ranking").iterator();
		ranking = ie1.next().text();
		return ranking;
	}
	
	public static String ProfileIcon(String url) {
		String profileIcon;
		try {
			doc = Jsoup.connect(url).get();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		element = doc.select("div.Header");
		ie1 = element.select("div.ProfileIcon").iterator();
		profileIcon = ie1.next().text();
		return profileIcon;
	}
	
	/*
	 * public static void main(String[] args) { // Jsoup�� �̿��ؼ�
	 * http://www.cgv.co.kr/movies/ ũ�Ѹ� String url =
	 * "https://www.op.gg/summoner/userName=%EC%8B%AC%ED%95%B4%EB%A1%9C"; //ũ�Ѹ���
	 * url���� Document doc = null; //Document���� �������� ��ü �ҽ��� ����ȴ�
	 * 
	 * try { doc = Jsoup.connect(url).get(); } catch (IOException e) {
	 * e.printStackTrace(); } //select�� �̿��Ͽ� ���ϴ� �±׸� �����Ѵ�. select�� ���ϴ�
	 * ���� �������� ���� �߿��� ����̴�. Elements element =
	 * doc.select("div.SummonerRatingMedium"); Elements element2 =
	 * doc.select("div.Header");
	 * 
	 * 
	 * System.out.println(
	 * "============================================================");
	 * System.out.println(Url("심해로")); //Iterator�� ����Ͽ� �ϳ��� �� ��������
	 * Iterator<Element> ie1 = element.select("div.TierRank").iterator();
	 * Iterator<Element> ie2 = element.select("span.LeaguePoints").iterator();
	 * Iterator<Element> ie3 = element.select("span.wins").iterator();
	 * Iterator<Element> ie4 = element.select("span.losses").iterator();
	 * Iterator<Element> ie5 = element.select("span.winratio").iterator();
	 * 
	 * Iterator<Element> ie6 = element2.select("span.Name").iterator();
	 * Iterator<Element> ie7 = element2.select("span.ranking").iterator();
	 * Iterator<Element> ie8 = element2.select("div.ProfileIcon").iterator();
	 * Iterator<Element> ie9 = element2.select("div.borderImage").iterator();
	 * 
	 * System.out.println(ie6.next().text()+"\t"+ie7.next().text()+"\t"+ie8.next().
	 * text()); while (ie1.hasNext()) { System.out.println(ie1.next().text() + "\t"
	 * + ie2.next().text() + "\t" + ie3.next().text() + "\t" + ie4.next().text() +
	 * "\t" + ie5.next().text());
	 * 
	 * }
	 * 
	 * System.out.println(
	 * "============================================================"); }
	 */
}
