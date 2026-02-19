Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 871F2207A38
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Feb 2026 15:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771516528; cv=none; b=t0Et0CCWtqghqnpaKyZjaCG6h4NhjLZpCkaCjKa9VAHrcA21CA1nC1Ve0eZU/dfaNj6H6VSs1oi3uXF6/947XQlccy/Cy1U6OxPKX+we708+DcgHP/kFUCVknLhQ+21v7Kp255vegCfw5zbt6hTHR3VrFofS8KUA9nDbfMDEGMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771516528; c=relaxed/simple;
	bh=fcv6jdeq+UGLuuTFNWcjUUCQurtgq9zPQ32QO/ponqI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=phO3KepRtvVA/51TieqLOt97FMN6vLiutPwItlBXtCBgPU8nYvJYKb/ogFCUj2VkC7iCzFa4w8HEImyx8ARKm+hYWy/y0s/MgcYdoanPdLFCovjaNO07dUijXlpJLAJs0Jd1UeLqqXVULTvu6X3Mur/lP5aqFbem3CcLJ+Xb3XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1771516528;
	bh=fcv6jdeq+UGLuuTFNWcjUUCQurtgq9zPQ32QO/ponqI=;
	h=Subject:From:To:Date:From;
	b=EuUJRaBp+MgtOnlF/+WPbjKpb8fxYSyVN0y7nKLn/7aAdWNe9ZbhFY8U8Np3S9xkX
	 f+CUuHY08I4O3CmEu54rGtISEnAN6Mif4SfKEihU4p015p2qy6RkoQQMTeJ2X7+JUK
	 aHb3eAQSDou6CiLI6tpV2/dEMWivR+iwnpDMUTX4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 342E4C4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Feb 2026 15:55:28 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 4A34C380CEF6
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Feb 2026 15:55:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.13 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 19 Feb 2026 15:55:18 +0000
Message-Id: <20260219155518.release-6.18.13@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.13
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.13.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.13.xz

Linux kernel version 6.18.13 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.13.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.13.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.13.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.13/v6.18.12

