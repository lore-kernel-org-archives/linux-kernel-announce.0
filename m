Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4156C2FFDEF
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Aug 2025 10:45:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755254726; cv=none; b=XgiEa2VnXloRLFmq/VXp6u24W+x+OGsUlTPknET34BqlL7gIvB4lhoW0ZGefyjIY1QR2HuV3CxGeTkkGXVcBTzsDEaiBNKBGipb1GDimyacIXR/gHiyMyn8PbCZEn5pdtLC56D1NVVzY3RpmOlJUfrHWCm6sXJQ/2apSVem0nbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755254726; c=relaxed/simple;
	bh=M7u6i7bMe4fE59hphvzrlUMJ1VYmrXFuWNrftiCF9OA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=j9ePuo7oFK9JVd7TF4dtANwHMKOczsV7pEaupytjdFw6cAJLUOTso38mTY+BjLSylOQQ3ofP4dnGXbPshLJTsk60EaI6CE2THqtSSGSXZziXTl/EFKhFLmDGmspGr8DMJI1SBBcRuH/9h96z9/5Ou0XdfRLPi4NBcxtMRBBuGZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1755254726;
	bh=M7u6i7bMe4fE59hphvzrlUMJ1VYmrXFuWNrftiCF9OA=;
	h=Subject:From:To:Date:From;
	b=WOqbLuZmMiNgtsybqg0sTrDvJhRAMz/hAPL8xHLTddYbO3RdkGEeMIUqIOAk5bn28
	 ckVjl+Upu8tgg+YykaE6bwBscdYVMxtPw2Upwvwkn+2AAfOImPctOi5SwVVh1Gyaxy
	 KM99tSYppEJBRdV01VeteZzAnfJ5IL7R7Dn05+38=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4457C4CEEB
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Aug 2025 10:45:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 33B8B39D0C3B
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Aug 2025 10:45:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.42 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 15 Aug 2025 10:45:36 +0000
Message-Id: <20250815104536.release-6.12.42@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.42
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.42.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.42.xz

Linux kernel version 6.12.42 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.42.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.42.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.42.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.42/v6.12.41

