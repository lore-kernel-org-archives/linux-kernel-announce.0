Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84CDE1C3BF8
	for <linux-kernel-announce@vger.kernel.org>; Sat,  1 Feb 2025 17:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738431036; cv=none; b=N0umaeQTn6mC3I8pVXgRyPJE0fSB65L2pQoWiuyWUm/j7Kg2raAq7lGn0UdYrTNVCK0bozV50D1Jq1F9mqy+uZfHpFAscI2kp2hmzwLHuSOepsPjWM8TPp/CllcbTPy3o8A9atkCOfQwIrK/p+VQigTziVRblzYclUGfH8UL9xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738431036; c=relaxed/simple;
	bh=t03aTlGodNLnsA0wns5SpB7bXkdGQjD0XXs/JQWo87s=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ktAd10PlPEM5AxD1Pms7k5LswySd/svu0YWXlJv9n+l599Ufyxy0NqzTvsPEdsXm/roS8WJ9Csm8QoebpVlFFHxarwYdkdjD5948nOcVAe3sBhTb9qJnzj0Qh3BHVa6d9exlgF6zSklBdJCggz1hDoSg7RHkODnm0UUYIriFmWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1738431036;
	bh=t03aTlGodNLnsA0wns5SpB7bXkdGQjD0XXs/JQWo87s=;
	h=Subject:From:To:Date:From;
	b=w228VxZc18sQJvG7AoqDUZAOtm1HIXeCRF/LNNvtSPxBqkl+i/XinwgNtYPQNV3Ep
	 yJpXo/QUwfxDNx3+cbLcrlpuSXbwgB05lLOE/bzCzlImBfj91OQhdXW/1JhzTbd2Al
	 QLw5uPAF0g2Jd2nw0rAPJ5UM60NiqfoS1pAfXSEM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A4AFC4CED3
	for <linux-kernel-announce@vger.kernel.org>; Sat,  1 Feb 2025 17:30:36 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B51D1380AA68
	for <linux-kernel-announce@vger.kernel.org>; Sat,  1 Feb 2025 17:31:03 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.290 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 01 Feb 2025 17:31:02 +0000
Message-Id: <20250201173102.release-5.4.290@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.290
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.290.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.290.xz

Linux kernel version 5.4.290 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.290.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.290.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.290.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.290/v5.4.289

