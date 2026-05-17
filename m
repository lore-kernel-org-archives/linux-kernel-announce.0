Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7AFF32D7F8
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 May 2026 15:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779032108; cv=none; b=O0dibJlVwe0s4gcFxxczP2hv7VBPknidUAvtp/jshmn0ZUtFTiWY1bm+bVUQSxz00yHQ1J4qi0rK2+gBSBsLPhfws4kImoh0Hjn4/rN6K+1Y/L4eMhIZ1fwE0Za2lsr3HEa82hSuT0cdQbEktCtm5AbbraGwUugNF+nrxgXHZrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779032108; c=relaxed/simple;
	bh=mNxsKmI/ySiciwlvZ9hFJBoSbzepEKficGhcqOL93vU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=kerChr6qw7rUPI2e80AjHPh9DfaroSaTOrbDHpojdiLQKxqrUtldlxtfN9FXyCgnE5kQ1RzbtIbzCtSLBUp6xkYIvZZTGzkd9V3OoDO0T4/nMbPUZh6nV4KckdJ7jelzrDCGIYvNwPdxa3VthRciqRUW4wv+a+I1C5b5hG8DLs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1779032108;
	bh=mNxsKmI/ySiciwlvZ9hFJBoSbzepEKficGhcqOL93vU=;
	h=Subject:From:To:Date:From;
	b=B+aUy3wHnrsB5yMJ1MO8B2EVjP5YHa0i4mX/PJcKIFlH/fvhgsloCAsD5g8ftQzBR
	 nTNTl/eZyhnVUi5kaSH+mAhltGUBRIqX0wUiDmjenJbneVidhUgrXgcMe0oL3/X+l5
	 TeZiAtx2czO3I7CBZrmg2pW/3gkw8ge58j7nRgn0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37200C2BCB0
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 May 2026 15:35:08 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 964E139308F0
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 May 2026 15:35:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.0.9 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 17 May 2026 15:35:20 +0000
Message-Id: <20260517153520.release-7.0.9@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.0.9
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.9.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.9.xz

Linux kernel version 7.0.9 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.9.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.9.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.9.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.0.9/v7.0.8

