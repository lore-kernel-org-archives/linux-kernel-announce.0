Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7922F49483A
	for <linux-kernel-announce@vger.kernel.org>; Wed,  2 Sep 2026 12:51:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788353488; cv=none; b=PuB0oN36tjUIQRoOOGRPqTb0tpgMhO24FPSSfj458WXtI6iHhuwaqAZixGMMPY8G6r4TlRKaRxkizamKWUUM4mspy0fDCCB9bJOBluhT1Au1Sx3Q3ZXdQkgY8gEO/wwk/5uvB2Ptd/6Q9YpQ6y2qN6OEXA4UFVP1JEJusb/COXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788353488; c=relaxed/simple;
	bh=/5/wuAvEILFsXwTes7Z7o09vUZo0sFS6hiL2y16HJXU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=uER3PcswSYTQ7laUv2gbqC88YZCMUg6NXIRyyGx6oNeMGT4mbkwSTk5YG4shMMiNW6BdZZZFDsBieS9pVmnvYhh+u/Uo8uoG7A+hEqRGBPkOoSgKi6itxr/5YEd7l8ONpuAR8lgBwfPGY26+ajc0qpyRP4rLh1d64NKUgyPElfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1788353488;
	bh=/5/wuAvEILFsXwTes7Z7o09vUZo0sFS6hiL2y16HJXU=;
	h=Subject:From:To:Date:From;
	b=RVdpowkBIqU1hiJRldbFsjCeRKiMTmigDSjxsJHyhJTqCMGYyn5UV3ziOWGXctOHs
	 O4ExqyHjXY6LAJEw2758d4ProsqMtxKVpyYWt3/xvTBDH4GKUD2IjtcPCEinBJKMek
	 n3lw1eSCvYcy/ADD4W7ccedjL3fmBAvt0LIGAJJo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25E321F00A3D
	for <linux-kernel-announce@vger.kernel.org>; Wed,  2 Sep 2026 12:51:27 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 5679139263B8
	for <linux-kernel-announce@vger.kernel.org>; Wed,  2 Sep 2026 12:50:30 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.187 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 02 Sep 2026 12:50:28 +0000
Message-Id: <20260902125028.release-6.1.187@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.187
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.187.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.187.xz

Linux kernel version 6.1.187 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.187.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.187.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.187.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.187/v6.1.186

