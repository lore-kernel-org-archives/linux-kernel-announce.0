Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B740493638
	for <linux-kernel-announce@vger.kernel.org>; Wed,  2 Sep 2026 12:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788353487; cv=none; b=PQbmFOoEQchRkjWj5ZYauZpulpvcpLlqL7oDSDmYKplblU3q3PlRkL2DNad0P9Nb4s5Gu5IteLdvl+Iwa0AzW0d7bPBoStr7saM/OPOAAzbp4TSsFJ3cmCNfYGt0HRShCgO3mfdD7YY/MiiSGq1NHCxHQj1uTthvGIhdh7HrjMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788353487; c=relaxed/simple;
	bh=fo53iXYiQXHG5CXa7DPfQLS2Hjs0HqDh1NFsEIZhCqg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=LcnsGuv6CebyRpYpYA+hVKhQUwlKhff1eskKJcHMAYz962na2FKb51pQV3jHZOB7oV+LsSViXJrdCFd/7reSDMwfNSsGa59AaaBoI+bTv40BBIqKj+Y9Rel0QUtKlDe1tGvYsJotd17q4BUKrR4+G2tTrcRCqloQn7aQXF/l/y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1788353487;
	bh=fo53iXYiQXHG5CXa7DPfQLS2Hjs0HqDh1NFsEIZhCqg=;
	h=Subject:From:To:Date:From;
	b=GkNVTWRrNIkot7ssrojA/LNBbwMMsGVpj8SYeJfPwgg9haMUe2M9BQQiEeyemBbRH
	 00obo1U3gzgGpNnqauBFW36f3zvB0FkEAGDQ0NGcXSzq/zWNileC+Aq9pQwIQkukE2
	 qijGPxnEUp9a92/Dg8SIjiuO8UM2j3isOZ9SEv4I=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1D721F00A3A
	for <linux-kernel-announce@vger.kernel.org>; Wed,  2 Sep 2026 12:51:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D0C6239263B8
	for <linux-kernel-announce@vger.kernel.org>; Wed,  2 Sep 2026 12:50:28 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.156 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 02 Sep 2026 12:50:27 +0000
Message-Id: <20260902125027.release-6.6.156@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.156
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.156.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.156.xz

Linux kernel version 6.6.156 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.156.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.156.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.156.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.156/v6.6.155

