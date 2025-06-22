Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E025CBE5E
	for <linux-kernel-announce@vger.kernel.org>; Sun, 22 Jun 2025 21:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750626921; cv=none; b=IiD0yzCsV5bIjvH7+CbtzBWbbNDEDUYwzI+fZUalH9N0/Q0zohbo53n18BetOtBAXZ8ov3PmCPVNqsTnukzSorxDbZIBLUrOpRFAcNJV18EjdIDBgnUpfMb3om9WQEmmn6z1PQ2PLJR0gUSBXOKt4Bt4z/sarigLFHVi46j3kWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750626921; c=relaxed/simple;
	bh=gPXcfZpNRnheaQS0dDEdOFbqAJK7cehkZ4p7bQyE0Hs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=GnJMFiNmUxNS8JIq0/lNGLAPH+361rGdh3HD0T0mUJNnsPU2+vva14PxLHQWtcdLR4Fk7HhM0lU5AY9rI2X0OLPOolBZGJ+mXi/oUnOZ6OEuLyoAc+EdHm4aGDTflmuqTsgqknRYXgBw52YTyjz19YkjYz+Jb39X/DoatTvvw8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1750626921;
	bh=gPXcfZpNRnheaQS0dDEdOFbqAJK7cehkZ4p7bQyE0Hs=;
	h=Subject:From:To:Date:From;
	b=FOVhCgkybjPbhtTySEoUKzOMku0R3modPZT+FjYxE+25UjSBibzbJ2+iCU76Adry4
	 Ckx1c205J/WohtRRwL5fe5/orSGWU21e+FR7XWy7qRrjrCjL7oZw/BZt/fAr1RjLEY
	 NGn1+BSAO3lpvLGTgKiZYwFEP3kCBspBid01ffHk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84BC3C4CEE3
	for <linux-kernel-announce@vger.kernel.org>; Sun, 22 Jun 2025 21:15:21 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE9FB39FEB7C
	for <linux-kernel-announce@vger.kernel.org>; Sun, 22 Jun 2025 21:15:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.16-rc3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 22 Jun 2025 21:15:48 +0000
Message-Id: <20250622211548.release-6.16-rc3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.16-rc3
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.16-rc3.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.16-rc3/v6.15

Linux kernel version 6.16-rc3 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.16-rc3.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.16-rc3/v6.15

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.16-rc3/v6.16-rc2

