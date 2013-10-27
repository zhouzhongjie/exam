package com.exam.dao;

import java.util.List;
import java.util.Map;

import com.exam.pojo.Film;
/**
 * ?µå½±ä¿¡æ??°æ?è®¿é??¥å?
 */
public interface FilmMapper {
	
	/**
	 * ???ï¼??è¯¢æ????å½?	 * @return
	 */
	public List<Film> getAllFilm();
	
	/**
	 * ???ï¼??ç¼???·å??µå½±
	 * @return
	 */
	public Film getFilmById(int id);
	
	/**
	 * ???ï¼??è¯¢å¹¶???
	 * @param params
	 * @return
	 */
	public List<Film> getAllFilmOrder(Map<String, Object> params);
	
	/**
	 * ???ï¼?·»??½±??	 * @param film
	 */
	public void insertFilm(Film film);
	
	/**
	 * ???ï¼?¿®?¹å½±??	 * @param film
	 */
	public void updateFilm(Film film);
	
	/**
	 * ???ï¼???¤å½±??	 * @param id
	 */
	public void deleteFilm(int id);
	
}
