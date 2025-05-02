Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6C372F2F
	for <linux-kernel-announce@vger.kernel.org>; Fri,  2 May 2025 05:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746165007; cv=none; b=oiI3kjMiNtvD6Eo3cLrQhlPmalQNfUSAd4V6sKdHzsQjMTjD1YaAynBUI/IFyGVawtkIUUO0cZupASLgpDa6ipkst4W2oinKYdbLzWGpFx7BKqm4YjwFs89Ts9GDgn56kC/9BktGBBNh3btZ97sNrv0I9W2vllbu6wAqb5PoN1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746165007; c=relaxed/simple;
	bh=BOmFI+BXnVeGUXgyDk26Y4ix2mQVliJG+0OhAaHo0IA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Nkgra5tJ3CbOeXSmgD96wNGFm1eZRGFFV/RY/yFE6S3rwq2/a1/jujwWIXsSK/8i4BQ1Tcv4Au0j0aRhUEG7tjrer0RBZJ+lEqHcJLv3i8clHQbV9RIKqCOCR3XwymqJLpgK0dzLwcANopUkzJxL4t31lTh+WysnpvPQRQBbiaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1746165006;
	bh=BOmFI+BXnVeGUXgyDk26Y4ix2mQVliJG+0OhAaHo0IA=;
	h=Subject:From:To:Date:From;
	b=UPMZbo/LftNmZmAVvhxGNTwqQeRzG/lwiP5wQNQ6jquk8CsDEoBetg3M8jbgwCtU2
	 JIA22X5IwCrmbP2xz4KrJshJvMnd91E9zcqI3lmTA5ZnYLmgfEQDIJ0ZlfcgYzDge7
	 SSdLIXewWSKptP2TY8jua9D4S6rZmySiGnucH4ls=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73159C4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Fri,  2 May 2025 05:50:06 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B17363822D59
	for <linux-kernel-announce@vger.kernel.org>; Fri,  2 May 2025 05:50:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.293 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 02 May 2025 05:50:45 +0000
Message-Id: <20250502055045.release-5.4.293@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.293
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.293.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.293.xz

Linux kernel version 5.4.293 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.293.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.293.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.293.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.293/v5.4.292

