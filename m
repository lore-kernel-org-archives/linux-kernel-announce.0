Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDC527F01A
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Jun 2025 13:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750340709; cv=none; b=lZiO0xlVcPoC3V5oyiH5TPgbrMDCkCtzh2OuuKzXDriMYTVaQAxzz2eiArlsMU9uKKcIxak80F38VXENPAmbwRsVdyYwwcL3++TywlXXVYbnBdz8Ke+rWkcedSvTLfURyMjlXfBMG9Ajvrm4BLXOeBmLg39iDygsFeSj+vjggPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750340709; c=relaxed/simple;
	bh=DQcrT3KG+zYH7q6c0v7LwtQBDGszVl/RkmjiUdjd3Go=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=PTBQGF8PylS/Pcp50cyX68Ja4rm1o2wfznMSvgVMccY7YTeO4cQtrukan98XuM6VIPKR7JDAmq6dS9LRLNZAUJ1gGeb0Sd8yU6LngBhOKsZJgzohsUmhXs8bxILHoXCICw50tKw9XMax8KHi7hHkjH/WV1RVhU2wSzkjpwpSsrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1750340709;
	bh=DQcrT3KG+zYH7q6c0v7LwtQBDGszVl/RkmjiUdjd3Go=;
	h=Subject:From:To:Date:From;
	b=jJz9bBc7xmU1t2jsKViDxlfGDVmKQRV+I+OLbXMtQ3ESjfQ/6GDsAF3ZVtRkZpZxd
	 1FNBU5MOJChywZsexhZ8A7d7La8srbyEFOt8a/hDl3uc1i+wzGqezfYGi0iDTh+Mre
	 jxGfTEV0hkK1PQGJw7VmI8Zv6cBSFAFzd91U1FRw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC0E1C4CEEF
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Jun 2025 13:45:08 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EEBE93806649
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Jun 2025 13:45:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.94 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 19 Jun 2025 13:45:36 +0000
Message-Id: <20250619134536.release-6.6.94@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.94
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.94.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.94.xz

Linux kernel version 6.6.94 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.94.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.94.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.94.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.94/v6.6.93

