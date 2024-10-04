Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E809821C166
	for <linux-kernel-announce@vger.kernel.org>; Fri,  4 Oct 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728053154; cv=none; b=VVSIF3uqE7UMoS7NZPxC9dbSL4URkTopmkrt339pwyKrY2bJv4r59ka9GyYorv0w/divFAnD8H8aB7dxgjcoZpwPbBUdTy+hMq1g+NPXFeYFGj+XJ9LC39ssuTdb6+1OioRiv6wGxcJqv9eQh6KdUn8WEAA+dSoYODD1h+r0IzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728053154; c=relaxed/simple;
	bh=gODPMXUBRsIzNBHC8H/pz7KSkyJNHQwhj7wY5dIxaLc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=L/XvWUpQNu6lgojc0tKXQJFvpfBSGp84FMIarHnE7qnKv7tcchrIzLQYnMn0BdXRzbBQQv1dPZ2w6H2nDaheQgugk+Ft+Ppv0HxNP3gJocBnyDYaJvo+JCemWAgxTanhu/YCxL+7bRy2AcYDWgPcT/aRwCw8/w1+kEyWdEm6qfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1728053153;
	bh=gODPMXUBRsIzNBHC8H/pz7KSkyJNHQwhj7wY5dIxaLc=;
	h=Subject:From:To:Date:From;
	b=cuZNysI4QGCeu1UbSP3r7hF/gOQhJHAWwElHGv+8oIrKQ6iUcHe3e4LAKDgmq6aXP
	 9NCetgqlgwOnpHH3jWqtrsPLJxED2r9uU/jh/M1ZFn6lVxYRbSzbEYS/B7JZy6VEIj
	 cKkkIrXQ3R/5YA9xrTDhOWUB4ym81A+yEDU53P2I=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F291C4CEC7
	for <linux-kernel-announce@vger.kernel.org>; Fri,  4 Oct 2024 14:45:53 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3A1D33ACF580
	for <linux-kernel-announce@vger.kernel.org>; Fri,  4 Oct 2024 14:45:58 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.54 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 04 Oct 2024 14:45:56 +0000
Message-Id: <20241004144556.release-6.6.54@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.54
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.54.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.54.xz

Linux kernel version 6.6.54 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.54.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.54.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.54.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.54/v6.6.53

