Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDB23BBFA2
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Sep 2026 11:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789385486; cv=none; b=mjmNkfrSnBL7OQGMll1ICKWfSL34XlTPSMZg00qqgie7hpKEufUoR52+xP9xYRV7YcO5MRuXtksNGlLkomaAzEjysWPevaXgKMXHGUkfHyCgWvO6z6yLMufEIFaVEXEBSqv9XVOLAwSt5cTplnOOSxWWvLkgsiE+jFg13k2/sXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789385486; c=relaxed/simple;
	bh=ud36Zm2Q6zEF9lZv+3qtKOSyaGY1Z4yqGZgcakXcaAU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=cQl3ekY/TkPa89UZ1sTDY9+WKxxC5EjiolMMmZ6rKk+xEKwliSGPXgkhnBbJ+twCpIHrgw/FsIMvBcaQrg3LtWzb/StS0ZDdljDDXQdW8KikC4hilvUDftOXUuu+jKA/ty151IUHAb03j70yVblz5424+whhh1fE0YMmaSok2Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1789385486;
	bh=ud36Zm2Q6zEF9lZv+3qtKOSyaGY1Z4yqGZgcakXcaAU=;
	h=Subject:From:To:Date:From;
	b=SNsepjGxhMovP9SFNQdbLzTvaJ3YodzruGuUYkKlGs5uJPeLqT4VceOKwoRSQk9T0
	 7WtF04uMMMMPu997E6ZDOr06nWohrQPqQT1MPrt2ipMiumddc5gfsTLOsnBnXwLqZs
	 Ncqg4Wjl2eb1o3NxvatNcHPoe+PEdc5+JtUgvKUo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7C0B1F000FF
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Sep 2026 11:31:24 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 5965F380CEFB
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Sep 2026 11:30:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.221 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 14 Sep 2026 11:30:19 +0000
Message-Id: <20260914113019.release-5.15.221@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.221
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.221.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.221.xz

Linux kernel version 5.15.221 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.221.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.221.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.221.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.221/v5.15.220

