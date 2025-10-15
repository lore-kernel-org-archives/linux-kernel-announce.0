Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FCF181CFA
	for <linux-kernel-announce@vger.kernel.org>; Wed, 15 Oct 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760523355; cv=none; b=ZDn9kT1I5Fgb0LlxusNUsOPUWkiiVmOyAlNAsqhlRG/x+6p93ae0SagqqcU5QCAppHrtj3kbFCAdJVHb9kvKup6MjTEna0BDe65dDEyg+5rCMTtu5vNxCZKf3u7+h9/HuXqhME+FVroSs0OuXY/oeZULzAr5Rqw3Fi5OrzS4N0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760523355; c=relaxed/simple;
	bh=an1oVb0gUuRidSh+NriiehWuN7H1kAEwAiSavRe0MZw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=hkufzhDRuZ5vyKm+QwGywkyuYG5aoc9E+R43PCm1D2kyPJYjQj/YBdm5zxSQCw0LZtk6GaDYDeEOPr3K7yGZzhvgOo9X9fZHns/w4bOdFL5c5u+7XynDMDCguQU8fhZ4iNclM87Xx9e0lSW106Z10TMKbin1jReERMmd/6rdOHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1760523355;
	bh=an1oVb0gUuRidSh+NriiehWuN7H1kAEwAiSavRe0MZw=;
	h=Subject:From:To:Date:From;
	b=fH5IFW6j7MRT/oicSc2lL7NaZ05qmZ0N71I4urP5fvdStsT/Mjgz2ngBFNj4GE/zT
	 sdBdBpjcwqnelFTbn/KLvZ41T3SgNSbvzdEgHwXT/8DApKoV9lEfNK8yKtouNIHfbC
	 wESZovAGnzAZd/+wl51vOPAR8Bl6KWk5t2J92iEA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5D3FC4CEFE
	for <linux-kernel-announce@vger.kernel.org>; Wed, 15 Oct 2025 10:15:53 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B1D47380CFDE
	for <linux-kernel-announce@vger.kernel.org>; Wed, 15 Oct 2025 10:15:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.112 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 15 Oct 2025 10:15:38 +0000
Message-Id: <20251015101538.release-6.6.112@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.112
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.112.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.112.xz

Linux kernel version 6.6.112 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.112.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.112.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.112.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.112/v6.6.111

