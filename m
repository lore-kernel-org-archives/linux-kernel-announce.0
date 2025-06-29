Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537A11C863B
	for <linux-kernel-announce@vger.kernel.org>; Sun, 29 Jun 2025 21:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751232284; cv=none; b=R7lXRW7qxKX/srBcBSVk1OxMVFaiQBSigibayansV4v0XJhiQ6FcnDMN0EGo5+4p1KbZ02lrLbbSzQwQcRdMel06mu0zLBMkZAWYx2DVqL1t8RBfr/VkJKtNsQ/6ubbKbZ0f6bObN9IiUrAAyj5gDd45NMggC7YI5ZS3VcO7Lhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751232284; c=relaxed/simple;
	bh=9S1YPYRQK+bYmPeOOVz6F34DPoToPMw1UY6Jgb4j6RM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ofVojK3l4utgbVFgHtJ8y1W4BM0jUfcuYRI4WsaDULCxNZUp8NuQZ+rtElTM5RPhZ9CO+Pn9IgfX9bhPI6ZIrTt3zwL4v0zp7orPIPP3lbMOFZOmtGVLS+crNuT46ZKsTwZG1GaGTVCYqC2XuDhbqq1HUY22iPT3E1G4uRMG/9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1751232284;
	bh=9S1YPYRQK+bYmPeOOVz6F34DPoToPMw1UY6Jgb4j6RM=;
	h=Subject:From:To:Date:From;
	b=bPm2Lc8r008FFGcVvKi/ugFqbAkNVJn/tXujz9vi2FBCyjSyhbtfDewnfEDSsVxy+
	 AScKrbkk3ctojRryJ1QMQ8GDdz6ZBZ5SSJwtt8BYNffz68wGsqFKGrXUMZQIUszOFL
	 GVPi916+fZf0oeq6at7gdirqAjRyY1XGavzN6gyY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECD2EC4CEEB
	for <linux-kernel-announce@vger.kernel.org>; Sun, 29 Jun 2025 21:24:43 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7478E383B26E
	for <linux-kernel-announce@vger.kernel.org>; Sun, 29 Jun 2025 21:25:10 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.16-rc4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 29 Jun 2025 21:25:09 +0000
Message-Id: <20250629212509.release-6.16-rc4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.16-rc4
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.16-rc4.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.16-rc4/v6.15

Linux kernel version 6.16-rc4 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.16-rc4.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.16-rc4/v6.15

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.16-rc4/v6.16-rc3

