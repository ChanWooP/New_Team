package com.sp.owner.owner;

import java.util.List;

public interface OwnerService {
	public Owner selectOwner(String ownerId) throws Exception;
	public List<Owner> selectList() throws Exception;
	public void insertOwner(Owner owner) throws Exception;
	public void insertAuthority(Owner owner) throws Exception;
	public void updateOwner(Owner owner) throws Exception;
	public void deleteOwner(Owner owner) throws Exception;
}
