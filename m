Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1074238177
	for <linux-kernel-announce@vger.kernel.org>; Fri, 25 Apr 2025 09:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745571601; cv=none; b=jAu5n8rcDBt8/4w5xsrxwvGgEzh+WLFXpGPkBFqWNlCuHVnCnAlurczAvl5NV8pQI/dpMAC+ReE59RNGSZQWBNd76I6/jiiArgyphkhsolTRfvyVL1/a+CX2flrJ1eQW05kUTtj61nVe1gncf2CPJrQeI4yTlgLab4fPMVqMLac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745571601; c=relaxed/simple;
	bh=BCm/YZC9eAp0nmzMLYVrdI9gJ4wXUda4zhq7RilgKL4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=q9Z2acCXVFkgv3O5kF5O1R8P4g/vxI/jvw+rwef8+LpOF+QqNCCvgBTdJl8LTLLbA7MPQF4SdmAA30XvguINHy7LB3KeDe+rgRht5gqimUMDyZfd7CEtt9FQQpVUqafP1bI6jf1x7LIz16fGQBX1MYTIJMNVFSAyd5saN1UMqV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1745571601;
	bh=BCm/YZC9eAp0nmzMLYVrdI9gJ4wXUda4zhq7RilgKL4=;
	h=Subject:From:To:Date:From;
	b=E1YL16goxylH6YK65KxDko5JG6TT62al0FAmwSfBBw5v1SBefaFKFRjuxvdOY2kXJ
	 QMg7ZTKfmlcYAAu/qvRXcJiHgg+/rf5zDL3AVh5gI8HMbP+9K+XqZsFCyDsykdkAxZ
	 Aau6lRolbCxxjer3b0n8nQUXmbrabdxkbfmClUbA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 719D8C4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Fri, 25 Apr 2025 09:00:01 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 38623380CFD7
	for <linux-kernel-announce@vger.kernel.org>; Fri, 25 Apr 2025 09:00:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.135 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 25 Apr 2025 09:00:39 +0000
Message-Id: <20250425090039.release-6.1.135@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.135
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.135.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.135.xz

Linux kernel version 6.1.135 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.135.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.135.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.135.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.135/v6.1.134

