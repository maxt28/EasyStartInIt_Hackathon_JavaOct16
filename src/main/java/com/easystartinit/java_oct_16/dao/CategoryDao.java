package com.easystartinit.java_oct_16.dao;

import com.easystartinit.java_oct_16.model.Category;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
@Transactional
public class CategoryDao extends AbstractDao<Category> {
}
