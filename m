Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065292F5A
	for <linux-kernel-announce@vger.kernel.org>; Sat, 20 Jan 2024 11:10:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705749045; cv=none; b=Ssgyhm/FvYdq9xwG8tEXVWc7hF4A6nnT06CLqbupmLOgx9+j3uxxgCec2exVR4FDE7ZoU7Wh7wCMBhhZeTMsD1pEVMDdQUF9TI4N1WTduCJkNwNunNIW8ZCi5M393WByxAErJpv9P1HrObqd3zZIWW7Xu27LOBv8Dwmva8aJIpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705749045; c=relaxed/simple;
	bh=AH+tSLdNbfrPQraH6i3YPiB7MVchiW05OYWggW4bgPw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=j2UdoyQlWdScTIq4dpI2KfJ8jaTIukkG/2ar9gyZhXVF0larIDNt6jFdK8fRuBPbbyIlrcxZYFSBd41xwMpBFAn5POLJ05B063weLyIelYuNLtJ1vf04Sh47pcu7nLomnaQwI8baRaCf8tHujtx1GumanXV0r+mfjMkMtDNuGis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1705749045;
	bh=AH+tSLdNbfrPQraH6i3YPiB7MVchiW05OYWggW4bgPw=;
	h=Subject:From:To:Date:From;
	b=kM7XATcPyOTsXBudM/s1JMXBxkCDt7Nv97wk6BvGLd9IIjkoNAfRILIBMpHt4UQh4
	 /horsV0L6g9vKqKab0z3Woo77S4feuMrgeO/WUiS/DIZ4D6yPYsV2Rp+RDT3OGf5t9
	 6/xKXaSDc7hXybjF3dNUNTpHfU743qJM/MGRlso4=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79D0AC433C7
	for <linux-kernel-announce@vger.kernel.org>; Sat, 20 Jan 2024 11:10:44 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 5D43DD8C97A
	for <linux-kernel-announce@vger.kernel.org>; Sat, 20 Jan 2024 11:10:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.74 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 20 Jan 2024 11:10:44 +0000
Message-Id: <20240120111044.release-6.1.74@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.74
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.74.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.74.xz

Linux kernel version 6.1.74 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.74.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.74.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.74.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.74/v6.1.73

