Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC51405F7
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Dec 2025 13:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766063332; cv=none; b=Q2ht1uTRfuSFv38oXYEYEHkPLP6Gk9Yq5+cMyi+tHDlH1/Eh8iien9V8N99abCF4/4eD9lGBfrXRYrAxoEE3vQv+CGa6I+yE0xXbT4NtSbKSPl697A7lci/juusWmIqDZiIeFJ4WwKRvt67BXb+2UML5BuQdabVTgXh7YZN2Jlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766063332; c=relaxed/simple;
	bh=PKlTDFXEyIHUgptxpUkHKGy1hZRBpHWUwSk2ayyC3As=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=tDrTHnIq/gA7CYVkLKXCJZNUnYGdXsvRyvlAnkIIlVMcG8h6U1MnrkJr569cPxSBdOKdlySi1BNR54ZDZO27PDZ6+oLYXWOSvBCPg+b4PuYpuBt7jB32o1Kw52QI+SQt09JOPjFGAB1zj5wEpgP9/GiOyRwWV6lSDgpxCqs0MDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1766063332;
	bh=PKlTDFXEyIHUgptxpUkHKGy1hZRBpHWUwSk2ayyC3As=;
	h=Subject:From:To:Date:From;
	b=js44VuDn5HIFXdHGandrSmiySX92iBEnkB9zJWkn2GQUOJekJ0FJ4Z+hdUcDt/qCx
	 lNyhdfSFdY00/39CsWeUscglclbhywAXemn7aa+/N9nxNSvOEG0Y6+XWPVzW7kCQhc
	 qGKkGFUVkH+VWzux8Kv6SSYac740sIbeBEOBJYPQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A29CDC4CEFB
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Dec 2025 13:08:51 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 4416B380A955
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Dec 2025 13:05:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.63 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 18 Dec 2025 13:05:40 +0000
Message-Id: <20251218130540.release-6.12.63@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.63
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.63.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.63.xz

Linux kernel version 6.12.63 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.63.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.63.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.63.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.63/v6.12.62

