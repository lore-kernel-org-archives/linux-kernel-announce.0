Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D33829CEB
	for <linux-kernel-announce@vger.kernel.org>; Sat, 22 Mar 2025 20:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742674219; cv=none; b=AGntGaxvqU+RQNExHAE+J6TH5wy3DZIwcXabNQc2wL0iYgIzC/ewZDRRARU/cwZDydAs4+5Bun+piR1DgRgUo0ivP3/nYoEQ+bEbiPOEXSlEozz3Sm8tavlXX/iHzrI9gqdFfncr2PzOtFMpZOAgrDU0MTNfvp5j78q61RUMOX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742674219; c=relaxed/simple;
	bh=JZRfxvMQNKPKelonODls5wkNEftJ9+qFhwFXyTCHbio=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=gtESTPoZZtVVpG4xeINVFThKqYVjtaL+D2+pcNdYDgm5QGSE8H6k92VHV2j99yd9aSKeFYk+w++ltDAWI4VlUpDSgLvu/wNQ1aWsHfozAdIRo2w3csOWuD0+yV7DgmmQkMfcuc7M37QJUothgiUZFOi1BcN5xdWAyOYLH4DROiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1742674219;
	bh=JZRfxvMQNKPKelonODls5wkNEftJ9+qFhwFXyTCHbio=;
	h=Subject:From:To:Date:From;
	b=IPxm2F6hDcgxHdEY7e9OGRT/NungocfwIbQRNd7I1QG7HQAywo4ypBkAaAOvvZRLO
	 BvH9ycIA0oyh5ID7LsVfhO2ivRU2ssj3lYhhzf6tDhr/EuNZv9oj5S0ODCTNf6skhE
	 C+HsLN07wKUAs9BcLck1e4g6swjjRZfh2jcVOSGo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE8EFC4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Sat, 22 Mar 2025 20:10:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 397B0380DBCB
	for <linux-kernel-announce@vger.kernel.org>; Sat, 22 Mar 2025 20:10:55 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.84 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 22 Mar 2025 20:10:53 +0000
Message-Id: <20250322201053.release-6.6.84@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.84
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.84.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.84.xz

Linux kernel version 6.6.84 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.84.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.84.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.84.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.84/v6.6.83

