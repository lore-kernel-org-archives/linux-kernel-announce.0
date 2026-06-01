Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2C92DCBF4
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Jun 2026 16:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780330819; cv=none; b=lMITXy+taHvgOcDSH610BlMESAW3Qg+6Y1733RJlu4XV5duSW6m68i2lt69myaikx/7rrz7C3MRw7eVgzUNILysYtPRLnzOJibhbXIdsMLZWT/jKyq4RxUxPiwn/iQMdTKsAhGaWOYap7YccMklxVkfm4/yPfFhuYIrmLeoMRRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780330819; c=relaxed/simple;
	bh=Dzi0u4Zq6FYBQqhMLjlSxSXQh5sv/VIiBR+rrEwBSOo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ZgfQHOs3AYKN9LswfOyRONDssJLWrRHlakw3tP9nvPm142HSXv840lph1EjgNxLS54j5CeiIoeyBdYMkHzhH61BgPxsWf8rMrTmmik+hhspcJxJVCNfXULWliHIz4EersVFQso7JUSqv8EAB/y4X/wckj6agFPs0UKH6zWRx67Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1780330819;
	bh=Dzi0u4Zq6FYBQqhMLjlSxSXQh5sv/VIiBR+rrEwBSOo=;
	h=Subject:From:To:Date:From;
	b=hKlmdqD3hnG293phAFyYnqJ8fMN2NWWMe5YkLsFoiyE1/2byak2mg0No5zTvqTTGE
	 tY6zm91YuAaXRB0NQ7H/6wKUjSrznp4OpB32pINrx1+BNCY8RxzEheN/d/VJJm51C6
	 0+bUoNV3b0PAP4uAk4N9IezuJ1yV1sQObLY5FSRw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1AA91F00893
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Jun 2026 16:20:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 9649938119E3
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Jun 2026 16:20:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.0.11 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 01 Jun 2026 16:20:20 +0000
Message-Id: <20260601162020.release-7.0.11@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.0.11
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.11.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.11.xz

Linux kernel version 7.0.11 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.11.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.11.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.11.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.0.11/v7.0.10

