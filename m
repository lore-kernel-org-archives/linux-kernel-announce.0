Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610F6946C
	for <linux-kernel-announce@vger.kernel.org>; Mon,  6 Oct 2025 09:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759743066; cv=none; b=oq9Lq7GwvTy5c5p9kenSP01jdjUePvWgcO2yLm1S7ZW696RYWijoleeUimtmIC57971GzSFwZpxHJIsCOsn6SSwLBFcc6Vi96EBUE3yWmVTPcqINn9ehy9fe4OyUOgGbf6YE7VT9f9oLz6WcMpURTbux1QA9hNfXBYWlnQlu/pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759743066; c=relaxed/simple;
	bh=ZeINRc7emhu7Ew+b70DRbD9gh1f9HSd7o3VyfYy8o/4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=RqbtzfvlO3R9tR3L7ILX+TWNdklGrG00YLjtclF+MOC4Jok/wjKsaIQ3v9yq3+4hyAG5Td5ifbsAYDIXXJy8u2x8OHLWCOB9VpRcauTsz90nW2Cg6jgylckkWS/Y6cBvZxPpDg+KI8kuEjczrkzOc8h/c5I4O0t6aSTXwl0H40c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1759743066;
	bh=ZeINRc7emhu7Ew+b70DRbD9gh1f9HSd7o3VyfYy8o/4=;
	h=Subject:From:To:Date:From;
	b=OLri3VqdAqmtlabXQYBd5fgQIQ86tbIml3Izuz6h1UtKQT/fJBGRFgCdJVudj79nN
	 vV37pUL/nmJxkpTov098oCkMhOeK/rMyBnoJZ9v5Xl89Cz5oz7nsEF+4YDRcN3DE0t
	 /CY3VYFAE/XB36ICXxDzWaJIdJTkR3MRV2SLNv1I=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 020BEC4CEF5
	for <linux-kernel-announce@vger.kernel.org>; Mon,  6 Oct 2025 09:31:03 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EF2B239D0C1A
	for <linux-kernel-announce@vger.kernel.org>; Mon,  6 Oct 2025 09:30:53 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.110 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 06 Oct 2025 09:30:52 +0000
Message-Id: <20251006093052.release-6.6.110@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.110
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.110.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.110.xz

Linux kernel version 6.6.110 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.110.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.110.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.110.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.110/v6.6.109

