Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B78F31A07B
	for <linux-kernel-announce@vger.kernel.org>; Sun, 10 May 2026 21:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778448375; cv=none; b=N1ARa6Tta5AVMg3zV6Exbu5FAf9th06DPuF1uM97Gar9xS3G91E7/N5v1c3kc+C84q+LtOeSJ2yKMksAAO20LWW/8wA2k5yGu2uBtfAtIkhezsY9Nos7itU9GqGj3qsPJSH46OJ+LfffESQ9DlQEJk5Mp5hakp8hHDi0IJlN1bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778448375; c=relaxed/simple;
	bh=SSoBSq8a+igo5IuqGzoxC24569tS4corPQuuegYnW5s=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=C8VEQe7Z4qXLMHytAEn13J4/gjrbBqm6xadmuLzrRRb/Tu4SSxsS72yG2Cc3nsnJbhIettGdz/lUKdfKD/zzRmF4ojp4FjyUhaStZheAQJyZKHpvaLSZ9Ls2qYkJRkKESbMs9FrYLtLtiAaJCx5csZ5HMFpqs4pvkyAkQrLy2ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1778448375;
	bh=SSoBSq8a+igo5IuqGzoxC24569tS4corPQuuegYnW5s=;
	h=Subject:From:To:Date:From;
	b=mm2K2wlyzW09l3nSt7iobJfqu/q7PHhuWer3bB60E6pY2eyu8hAJb67hCQWHy/c6e
	 l37E2FIPo7noPB3q7kkRYmZk1mGJST5kRO3SRIUx+mHOqjNxDF1XCurziNee9WN5Yk
	 /k42RXT4u1YPDush0Y5KqvZ/7BRl95d3Sg49eRYo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C56AC2BCB8
	for <linux-kernel-announce@vger.kernel.org>; Sun, 10 May 2026 21:26:14 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BCD243930031
	for <linux-kernel-announce@vger.kernel.org>; Sun, 10 May 2026 21:25:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.1-rc3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 10 May 2026 21:25:21 +0000
Message-Id: <20260510212521.release-7.1-rc3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.1-rc3
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.1-rc3.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.1-rc3/v7.0

Linux kernel version 7.1-rc3 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.1-rc3.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.1-rc3/v7.0

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.1-rc3/v7.1-rc2

