Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3E7F448BB7
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Sep 2026 11:46:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789386388; cv=none; b=J9vOSQeYyvVUdn8Op23e33GIdSiHz/Yy8HhSi/+THXCE06taSlU1SjwhArIHZIKV+Cmvs9XIEO3Gg7UCETbU8EMyRc7fzhxfThXj1DiJbfxBdoEX3LWi//ManJmO+Ge8raGkbvI3EmvqLONqVuawOVRZXHB5IN//yo1OixodI9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789386388; c=relaxed/simple;
	bh=zGDVyHqmLxLzx7hmGqk1oCUn2kvHX5QQviAlwl0RKNY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=TuiX9une08fF3lYxfMGcUiMXuZoK6VbpZs1zM6KPumOsyvFtKUBOgmt6vObuxzZLavbFT0X9g8jyWPC9zXejO1mfBExrkuiwZbBM1kduCvwpOP/szBVX6Nf9kdTn4CF6ngi55KWHgBVzhN8PbOXetuWh/wnpiXrovTA/Q+zkw28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1789386388;
	bh=zGDVyHqmLxLzx7hmGqk1oCUn2kvHX5QQviAlwl0RKNY=;
	h=Subject:From:To:Date:From;
	b=rTMlg78TWLsqO6SyRpU2WuDsRO0Mm+iKvm50LRnbxSulBf9a2tbWo71F2t/Cy2fCA
	 O4gE8vh7JJl6aXNtsOIPrXCwc93Vs0yvgmAiq3+11puNVPWzyxg2IlZvaJ/H7Sp1xL
	 PIGj9dilvszLwREq1urMV9SV/5HhbmKwqPgmzLb8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FDA51F000FF
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Sep 2026 11:46:27 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 962E0380CEFB
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Sep 2026 11:45:23 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.188 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 14 Sep 2026 11:45:22 +0000
Message-Id: <20260914114522.release-6.1.188@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.188
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.188.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.188.xz

Linux kernel version 6.1.188 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.188.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.188.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.188.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.188/v6.1.187

