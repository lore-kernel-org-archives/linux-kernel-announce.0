Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC6D3009E4
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Sep 2025 15:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756998637; cv=none; b=ZoKe4psk1qzAQPSaIlTPrYvf/RuDHgKz0X1qxTUeGjVtjdbzvCPNIOQjEbblmr/p3YrNhHAvjT/3sTS+EgHQyiBuBRLHCrZwChoW5Gw2oS2hHRvFPyJckg5JVlox8Zn1ZwfgAFxdvskpSvMD2FJXruqTKtaTGZ8kiqKT9OpCfnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756998637; c=relaxed/simple;
	bh=2NYATKu11NeS9CUQkDE+VDYzJG1uolq+Zqwz2HVjH98=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=fv8GX3wYR5D9QZvZWmkRykdbM+5+t931mmmvZ3XagyXEBxrzEaxNXKOTmrJpvupa5Fgyc6lCgreX19Y0aReAsmksFE69GKJ5BA6YCc4eQ5NUDb6Lw4dWkarWgk3NM43nItpvljOMuMvPt+2YghhjIoB48EoSso9xio4Tb9iMUMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1756998637;
	bh=2NYATKu11NeS9CUQkDE+VDYzJG1uolq+Zqwz2HVjH98=;
	h=Subject:From:To:Date:From;
	b=B82SGCVUNwOoOtpylLQgsXFjFXrjP0M4ZZfXMZfgBYEfb+1bg3+NmolIu1bkFwtf5
	 EXyEJha8aEnlP8oO2h9AMMzL8l9S8n6OFxcO8Vu6kLRfxzsRq76xcdvo2qhTma94nx
	 8RUna3G1jh/9jmDlrLruawnil5FmpcUprejQXRPw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16B00C4CEF0
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Sep 2025 15:10:37 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EFA13383BF69
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Sep 2025 15:10:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.16.5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 04 Sep 2025 15:10:41 +0000
Message-Id: <20250904151041.release-6.16.5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.16.5
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.5.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.16.5.xz

Linux kernel version 6.16.5 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.5.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.16.5.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.5.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.16.5/v6.16.4

