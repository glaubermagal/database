alter table snapshots enable row level security;

create policy root on snapshots
	using (current_user_root());

create policy owner on snapshots
	using ((select exists (select 1 from sessions where id = snapshots.id)));