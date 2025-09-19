Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE23253B64
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Sep 2025 15:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758294043; cv=none; b=LkK1kl/th3PjjXd+Mn/RSpAXUBO+OGf2ktkyPj8Af9k4frybDIUz8DcwJuMPxbJDTSmoe0bHDg408PFw8/E0LoEQ87cXTh2Ayn+Gtr85L6DXkqq6WXFmUEi43mT6KQiFa8pY1HTGMCY5VX01cM2pFSnLoqx7QyxubrFYyRwarxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758294043; c=relaxed/simple;
	bh=2YZ+vye/DV40hP7XIaox5HyXyD2vavvz85JZFgpBtrY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=FKoCocPATQDa2lf18ySovgFXQCzeEktj+MQw9NUXjpNGsWJ08VzW33PsFHfkr+/Wt0qLo2DaJCTaPmIqysvgM/l3aKuePDStEhEKCDvu9jFDTZq1HIvFZDq6l+WQUAwJVVnM93V3wsj60nh2GAqn66uz8mnM/a15nWBePZzJj3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1758294043;
	bh=2YZ+vye/DV40hP7XIaox5HyXyD2vavvz85JZFgpBtrY=;
	h=Subject:From:To:Date:From;
	b=enlwFgmWIkRxFfLV1XRAu8/bygFcXGqesBm7fmXNOd8wSNeQJAmELyM568iSf3BjL
	 JNZGFVHhiZsWisCd71dbmDWbyUPI4AZJgkE5Eu3kKlglDyz5pw0XBCbHq5Cyvckgnv
	 T8yArfzzG5Ie66HBBZvJXrW9l0AQ2Xvg+qGzkkNw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5FB6C4CEF0
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Sep 2025 15:00:42 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7646F39D0C20
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Sep 2025 15:00:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.16.8 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 19 Sep 2025 15:00:41 +0000
Message-Id: <20250919150041.release-6.16.8@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.16.8
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.8.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.16.8.xz

Linux kernel version 6.16.8 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.8.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.16.8.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.8.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.16.8/v6.16.7

