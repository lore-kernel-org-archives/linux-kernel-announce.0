Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94FFB27815D
	for <linux-kernel-announce@vger.kernel.org>; Sat,  6 Dec 2025 21:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765056519; cv=none; b=s6GWxR4i1OlPiqN35/1+34pOZDGWTO1K6NjvX2vlG8w+kUm9pCMLnjyF5JFo3B1fnRYOiMnHvPDwmJITTMvB6HGyBi0iWg6VE6eoUAjgCwVxD2pgszukuqR2crk+4Qlzm1s154iC7rhWjIj7ExUi9A8EDToBjACQSlQUL8mjRhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765056519; c=relaxed/simple;
	bh=3oNa3P2eF8SNU5DOiK47E3tnnevGwdm7iMc3n862oMY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=qaJpatwNqOpQgl9r/mUi7dKSKGIuA5lTvE/L8nM73OaHDjYS4ZwqM/Tfgs4xvlykXVwaqEhJ8r9QsZkdWjyYpvO4a3DnAWCNmoIbf7WIBM844sNU/OZ9bk1NFT01hFYNZA+sL/4U/rr5lKMYVA6Rf3kfvscG6hDmfrE0c9UDO8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1765056519;
	bh=3oNa3P2eF8SNU5DOiK47E3tnnevGwdm7iMc3n862oMY=;
	h=Subject:From:To:Date:From;
	b=uxIDKKZSDtlw3wMDf/DHs6Fm+j0DwNitwuntoq4SMtpSI1cwqWG+fREVnE64Lg3rh
	 miCBprZ3L1DeOVktUHBM9OqNl0yYj6UXKKq3o5OGs0nIqeEOnC9hz9prNVT12dujEf
	 jeVMnoL5nDVghoYYlFSjFejOmdI+FkZkb0SQRhBA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39AE5C4CEF5
	for <linux-kernel-announce@vger.kernel.org>; Sat,  6 Dec 2025 21:28:39 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3FDEC3808200
	for <linux-kernel-announce@vger.kernel.org>; Sat,  6 Dec 2025 21:25:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.159 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 06 Dec 2025 21:25:35 +0000
Message-Id: <20251206212535.release-6.1.159@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.159
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.159.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.159.xz

Linux kernel version 6.1.159 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.159.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.159.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.159.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.159/v6.1.158

