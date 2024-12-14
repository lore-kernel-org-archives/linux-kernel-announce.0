Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1BFC1A8F8B
	for <linux-kernel-announce@vger.kernel.org>; Sat, 14 Dec 2024 19:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734203133; cv=none; b=oS2UmuNg/ahH3rsUn4dTiLNSX1Dc5QbMLuXQWE/hY+ndl/QHRlS2ReyYGtBuNg1llSjuRF2xh2gtv9kE2vznTG8iCxHJP5zDfORFMckQrAf5cFUWYKDv/6Ba3iOigJLYVfOvs53VL9eAIZzH1ai/OlSg4pLwYnMrkq3VQkQKj8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734203133; c=relaxed/simple;
	bh=yAiqxlUP6lAMC3fMZsN1YtdWVzqSpT1dUE9/ZRpnE9M=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=bU6lRUzBtLRnpmJgGO/+13xn9/K7OlHt+KnizHNZMyVHWYZjDEFbpkTpcjgNFX+PjsH3fYk/0nv83SfYI2egwAo6WNRoIcnZ9n4r6FLXH+ev7QHCGYUMJS1qz8KsNQPBcnzP8GHcVj0mviUvnfRKufaTUKaqxARr1WqXfRIn1L0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1734203133;
	bh=yAiqxlUP6lAMC3fMZsN1YtdWVzqSpT1dUE9/ZRpnE9M=;
	h=Subject:From:To:Date:From;
	b=OZwVXxEG7Gk7xOwi5XJZ2mleSMER/z9iy42sMWKN0eyu0t/hVQfxpB9UjYEwetPAn
	 UPMWX4A+qHZj5yHHsTLtlbxwnnZKCsZikzHay8ih5BajhHNm2DTasZOxbkOt+zfheA
	 9eY9jkq+gRTPSy8XfSji8hib6JjHTueTaa7UL4/A=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F1E2C4CED1
	for <linux-kernel-announce@vger.kernel.org>; Sat, 14 Dec 2024 19:05:33 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 33E8F380A959
	for <linux-kernel-announce@vger.kernel.org>; Sat, 14 Dec 2024 19:05:51 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.287 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 14 Dec 2024 19:05:49 +0000
Message-Id: <20241214190549.release-5.4.287@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.287
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.287.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.287.xz

Linux kernel version 5.4.287 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.287.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.287.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.287.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.287/v5.4.286

