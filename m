Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6506344059
	for <linux-kernel-announce@vger.kernel.org>; Mon, 12 Jan 2026 20:34:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768250061; cv=none; b=IEdG9Bauf/P5wsgy5XnkMd+VljqyERTgFUl4cfiE+KNZaPHaIuk+RnnIRxebZmKjAVlbVHDCH4TkLHLRmgugbIcFzHFpTuoaSjsRtpppbO9uzxyr8fl+3fgIjwik8R4s+Rb4Df4TFAg39lyszqo9zYtNNnDpWOECvBx5TCLVb/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768250061; c=relaxed/simple;
	bh=H1Sf5l2Oun3oBi4FTwPvf1dibbwbbL8W9wzMhD6WeOQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=MVQn318NUKErB0HoCxxsb7G86ianFhFHKLuaRboZ6cGYMP8O6N58aVZWkwe/CNa40K23nCGaQaQIuCuWFfggeWxbNwjOWWn3wK3Oe5kZk0+Wbb6QYWDPia3vnk0EcOrPV7Cs0jPTN4TRICaO120rcDeO3qgCdrs02OU32OHaCkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1768250060;
	bh=H1Sf5l2Oun3oBi4FTwPvf1dibbwbbL8W9wzMhD6WeOQ=;
	h=Subject:From:To:Date:From;
	b=MCbkMWUu5wtLzaIa3s0M9AAsCCgdAfnQFtHa3Z4pzw4gNnFIIupw8b5NZs1bkWyKi
	 v+O0H19OHNWmYG0r71C060lmG1Rr39TnbY93a2cVIz59MIkPiIZ5uJJ2367xR06Us4
	 5RQREKS4mmxCHizXAx4r5eks0YLnGSDw5PdasMVA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC98EC116D0
	for <linux-kernel-announce@vger.kernel.org>; Mon, 12 Jan 2026 20:34:20 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F2B4E380CFDB
	for <linux-kernel-announce@vger.kernel.org>; Mon, 12 Jan 2026 20:30:55 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.160 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 12 Jan 2026 20:30:54 +0000
Message-Id: <20260112203054.release-6.1.160@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.160
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.160.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.160.xz

Linux kernel version 6.1.160 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.160.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.160.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.160.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.160/v6.1.159

