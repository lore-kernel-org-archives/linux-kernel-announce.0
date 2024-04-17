Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47648F516
	for <linux-kernel-announce@vger.kernel.org>; Wed, 17 Apr 2024 09:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713347144; cv=none; b=jEStnLcQWD6PL/4db9gsWvZoUqmJhc3nWQtrv3btVMpIk+J+lpyJlU5pneyLvjU1Aqch9RF65ShVVt/1NgX7Ty0G0GLj8ctFD19f5N2rUdKiDUFnXMtYtUCiPmWN114axNIZ7fIQtlJ2IUQJfZ5WXQSC4arP3wAjboxyq3pT3DY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713347144; c=relaxed/simple;
	bh=x0AzkmVSSs50A/Id7+N542vgiVY3GDGKKw4GAshWqUk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=i39oohoZdkLLbOD+IosEah6DL4eOK1eRySGEhPA4lzTrThExSjqIciQ6Oaf+ZaSFKQkU6ZwGjWe8HN2or/QVATbSu2TvToBNGyQcebAlW7+icW71fKWWejqDrpFshJHIZNJvN9n0vWCmPr3BEgGmZ6nbq7H288f2B3jGClMKYGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1713347144;
	bh=x0AzkmVSSs50A/Id7+N542vgiVY3GDGKKw4GAshWqUk=;
	h=Subject:From:To:Date:From;
	b=NXSo3pJ7wH9spJbM+41yjwjFCRyMjLRG66AlS3YonQqCQ70dAxz+TB4ytf3tx45wr
	 qvBo0/rKPv+Qft13+bDACYaQtqVo9kyfVmfgUE4Jju6IhYItUGzn5onx+kqXffHDvu
	 9Bty48mMXSiB5KHUbj6tHjK/91vEV7yegwhcbob8=
Received: by smtp.kernel.org (Postfix) with ESMTPS id C000BC2BD10
	for <linux-kernel-announce@vger.kernel.org>; Wed, 17 Apr 2024 09:45:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id B0642D5B3FD
	for <linux-kernel-announce@vger.kernel.org>; Wed, 17 Apr 2024 09:45:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.28 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 17 Apr 2024 09:45:43 +0000
Message-Id: <20240417094543.release-6.6.28@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.28
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.28.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.28.xz

Linux kernel version 6.6.28 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.28.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.28.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.28.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.28/v6.6.27

