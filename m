Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2FD2135401
	for <linux-kernel-announce@vger.kernel.org>; Mon,  5 Feb 2024 20:35:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707165343; cv=none; b=StnXqk4KATKIscY1+GFSZqdtqUNmt9HVZc5ySfjtFwRhGUB3dD3RvqVsz8SG4lp8hCnfpcClpXYQ0Y/RLhSOKy97iDO8ehB3u/5cu1TKslb+GW+lEh8FuSlyAfSi0kDyjlB4IOTPk4QHj+U+h7rt1djOFVV/9626YSso8oqNnEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707165343; c=relaxed/simple;
	bh=EVlhP/9ul3Qw2L/9XD9kXZ1OpKEZeQGjbDnyaK62m90=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Y1Zd/R9cltxSXHItT7vS/U/VjvEbNuUUyJ/qg3MdEaSEorBvue1gthanZn4NSFM8Zx2tCk7c2qn88+ZsyNRyUpcMN90p/O6OArqwQbYiGmfGQCd8pUV8quLDlQKPGyfKmLdFMG+GGwV8ifgNIuW/bcp59Js5X6qc7N7pY1Jroaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1707165343;
	bh=EVlhP/9ul3Qw2L/9XD9kXZ1OpKEZeQGjbDnyaK62m90=;
	h=Subject:From:To:Date:From;
	b=dyUtavaHSydEIp7vyFRFjRaBCiWHYcx49wnZ9Q7neP+EdWF4f6mvFkBxY43K2otiZ
	 Vwaf5KgMSyUZNvEFXEjlD7SilShaVUPaC4i2D5eJlT7m0OLeXKaURIO+13jjG8GmZ1
	 LEFoCoU9U+lNDlZz1iaYpmYBFZU6CR2wPfRo+WyA=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 723A4C433C7
	for <linux-kernel-announce@vger.kernel.org>; Mon,  5 Feb 2024 20:35:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 4E932E2F2F1
	for <linux-kernel-announce@vger.kernel.org>; Mon,  5 Feb 2024 20:35:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.16 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 05 Feb 2024 20:35:43 +0000
Message-Id: <20240205203543.release-6.6.16@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.16
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.16.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.16.xz

Linux kernel version 6.6.16 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.16.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.16.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.16.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.16/v6.6.15

