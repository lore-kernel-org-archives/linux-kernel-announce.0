Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85D593A7828
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jun 2026 10:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782555936; cv=none; b=ed1V1dwGG6BqO1LGbWNq/oJFmeYHI17kUbCgeUGPeYKJsJpTihfIgHxT6hQ8y5gZCQ6ivk1nSeuabo2v27B7J2BqSucZkg475tE9AfAWV420lF7D0uqQ6wWAJicVdKbNm3mZq8zQEKc/7eVtxBtSgCB4VPySZRvI4imQMANZfLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782555936; c=relaxed/simple;
	bh=IwrqPcEuU2In0MhhOkV9E2zey9hIugXicUG51P6Mc6c=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=SJtxZ21LfYa5Gbllk5qrny+iwIE5qlpUQBoCIKerEmIRpZlzuPIhfbPPjMU/3RpzQXHjphbqDpYrwHDHarscQ23hdp/TWyqe7pZ3j2xURuxLNKAEZRqfqzzO5jkxDmyGLpl9V3ds1ksWvCGq+ysPvxGXGJeJkokKqciRXRbGWpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1782555936;
	bh=IwrqPcEuU2In0MhhOkV9E2zey9hIugXicUG51P6Mc6c=;
	h=Subject:From:To:Date:From;
	b=ag9qbnAkFb9Mpv7UDj45EjSHS+8li6O5WpvosmhrYKF6UzqYngrNqdV77SA2JEBBG
	 KvslITZ0zjrbCn1cOBL9+cBR/iDSEe3iq82GQmr9f6E0G0CAA97HezY9kVNuzGdVkl
	 PTTIezcmjp1LRcz8LI9fMJZ8vUODeXDPyanmgmpg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2D911F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jun 2026 10:25:33 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 596C93938C7A
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jun 2026 10:25:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.0.14 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 27 Jun 2026 10:25:19 +0000
Message-Id: <20260627102519.release-7.0.14@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.0.14
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.14.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.14.xz

Linux kernel version 7.0.14 (EOL) is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.14.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.14.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.14.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.0.14/v7.0.13

