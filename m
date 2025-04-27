Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34383192B74
	for <linux-kernel-announce@vger.kernel.org>; Sun, 27 Apr 2025 23:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745795085; cv=none; b=s3rK/sUcOsZE3VRFEi2zB/s3FNDrD3VyG8k+TNOGXPdzNr8TYYGGz09dSpJgztXuBcA6eKZ1K7dPyukrapu+HgrzazJ8ujB/2toq83GKq+FFXnm4rGfxmiCU3/WrUcT6VnGhUBsuwN+VlXUmXtMKXKbIlbf2ja1idachuGvlPYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745795085; c=relaxed/simple;
	bh=YUwtkmqvwaGNtdbNCnb5oMpldaYuyuckuRD7tVPYeVg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=MUmNnwLnn0HT8JXZ+7IdeCTk4CyL3qStSl/oDAIHYdSNFlsaXkqdUTU5V/m35RAZ2hPpcf0nv9LaueM6V5YPLt3PfwhzCGmyZN4mKoqD2jjtzqHeQcNpd5x5efCWChMmMmMN0osEWAxfOwuq9tp/BJ4jqjXVSSVjpLxSIstB91o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1745795085;
	bh=YUwtkmqvwaGNtdbNCnb5oMpldaYuyuckuRD7tVPYeVg=;
	h=Subject:From:To:Date:From;
	b=Ob2pJLUS6yp9Xg1i+nZJ2ZU7Gxfv7U8IKQqLOx2ipAdSuA3XA5/YOPfV5r4Otjh75
	 TuYWug+znhgrdLlyC60Fegzmc38z/Fa2BwtUYbl3tGaVHZE13Tlr1KqjexlwNA5Zjp
	 mElOvk+oTyUurO4g68YdkmPfMzQe9r5Y+fyK6O08=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6FF5C4CEE3
	for <linux-kernel-announce@vger.kernel.org>; Sun, 27 Apr 2025 23:04:44 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B172C380664A
	for <linux-kernel-announce@vger.kernel.org>; Sun, 27 Apr 2025 23:05:24 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.15-rc4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 27 Apr 2025 23:05:23 +0000
Message-Id: <20250427230523.release-6.15-rc4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.15-rc4
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.15-rc4.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.15-rc4/v6.14

Linux kernel version 6.15-rc4 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.15-rc4.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.15-rc4/v6.14

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.15-rc4/v6.15-rc3

