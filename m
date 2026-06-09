Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 723193F4853
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Jun 2026 10:40:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781001622; cv=none; b=rhSBlEHXkU1XKINAS1jKUde5Q3uml6KRl+hQor/1pX/ORtVx1V4UvmNV4JEarFWoTSacjSaTpt1ogUtzE2JIHXRcSwKkDszrmcKscVeMI0vNaJXsq8wzKarZDVylE50Y5CnKOcISt8bPtQDEVDoXd/YIbEfH+aarzC+q+ZxZM98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781001622; c=relaxed/simple;
	bh=vH7SDDYyfAeiJliMR4IRMiezM9oGZULPlbwjoxKg0iM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=c2Kx6e5w/Aks67oHs6Gm4fvWKGfOORlcszts1NlO4MsqPQHr4ggHgvAlaxhHpIdNz6uMc2CRdl4Ksp95UrArR01fGWjrQ9g+Upx5sDE7zANUPnWpev3FiAFeGnelFtPj+RglLrZuKRUk6N39meer9HbUjArxJ+W0zQt9Nj31i1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1781001622;
	bh=vH7SDDYyfAeiJliMR4IRMiezM9oGZULPlbwjoxKg0iM=;
	h=Subject:From:To:Date:From;
	b=nZ0vWtPTvpZpiCBdlNAJBfAA95cjSsRKRo5iRAqfZ+vo6O+ADqY/vcFHOg+UVWau9
	 GR3HgRe0abkvoSZlHBIOmAI/fusJJ1itRsYZy+VXmJv53ymNHuOq2XEw9FXTEjKXz6
	 824l/nlMMhH/QANoLZe0SxWJTZqqSnoWeih6XVcA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 280EC1F00893
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Jun 2026 10:40:21 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D0D4A3930884
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Jun 2026 10:40:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.93 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 09 Jun 2026 10:40:19 +0000
Message-Id: <20260609104019.release-6.12.93@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.93
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.93.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.93.xz

Linux kernel version 6.12.93 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.93.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.93.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.93.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.93/v6.12.92

