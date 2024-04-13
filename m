Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C962C9D
	for <linux-kernel-announce@vger.kernel.org>; Sat, 13 Apr 2024 11:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713007244; cv=none; b=ov5v+pvOODfgd9ZeH1552coj13q60iQr2V8ha5AiTuFLahpGREjqdxA9TjUEeJmFZS9rTeNIe6IMM81zvUSpqM0GZrhmPAZ7K9tATh7q/FUzZHHB53mSV5PwVzZMpkHuSQIm7t7Ksck9zywsVbR8wNcGeVWaqOfUF+Fdqa2fTVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713007244; c=relaxed/simple;
	bh=RvAIufUDalJCK/cM/tAiysapxPZQrOcL4IUXZCGyQ2I=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=j6eqJ6SqXatJ5lbuY9ufqohiygs/Xp+ho7XpmWiIcLz9h/cyiq2zK3SWYgY6zRQnFU7V/ZR+ncii+6HQVECP9ccrnEDFNPmc0iSx6P4pOecAwZeg6WwuQ7MtXzuowux+631YSq54QG0SaojvkwwCmIGAPm4ZjxS4NbeGYyYA2q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1713007244;
	bh=RvAIufUDalJCK/cM/tAiysapxPZQrOcL4IUXZCGyQ2I=;
	h=Subject:From:To:Date:From;
	b=qHm3NKFKLVI8gNYOePVX1WCwfa+dzT5BY02qeVG+FgKSOUvKvLYR/XiqKufn4KLZ1
	 U+gBkTVt+eJevGsjxV7mE0mEjM39e8pjkkcSzmCLyTZFDhdWVias2sFalzNk530cTY
	 Baq1zGdE4xNASY1+a6OSvgy9oLIiEvA5pjo468uQ=
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4E44C2BD11
	for <linux-kernel-announce@vger.kernel.org>; Sat, 13 Apr 2024 11:20:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id CF1ABC43140
	for <linux-kernel-announce@vger.kernel.org>; Sat, 13 Apr 2024 11:20:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.155 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 13 Apr 2024 11:20:43 +0000
Message-Id: <20240413112043.release-5.15.155@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.155
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.155.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.155.xz

Linux kernel version 5.15.155 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.155.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.155.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.155.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.155/v5.15.154

