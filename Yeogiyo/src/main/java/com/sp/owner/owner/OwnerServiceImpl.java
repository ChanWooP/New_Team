package com.sp.owner.owner;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.common.dao.CommonDAO;

@Service("owner.ownerService")
public class OwnerServiceImpl implements OwnerService {

	@Autowired
	private CommonDAO dao;

	@Override
	public Owner selectOwner(String ownerId) throws Exception {
		Owner owner = new Owner();
		try {
			owner = dao.selectOne("selectOwner", ownerId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return owner;
	}

	@Override
	public List<Owner> selectList() throws Exception {
		List<Owner> list = new ArrayList<>();
		try {
			dao.selectList("selectList");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public void insertOwner(Owner owner) throws Exception {
		try {
			dao.insertData("insertOwner", owner);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateOwner(Owner owner) throws Exception {
		try {
			dao.updateData("updateOwner", owner);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteOwner(Owner owner) throws Exception {
		try {
			dao.deleteData("deleteOwner", owner);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
