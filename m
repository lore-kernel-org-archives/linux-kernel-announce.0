Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0264E1C8
	for <linux-kernel-announce@vger.kernel.org>; Sun, 11 Aug 2024 12:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723379770; cv=none; b=FqJiGKQ8xOBz5DlAWSOZYpX9rs92UqVq8Wnu3ioq3zWJWePUWvhc3Jc09AVpXFYE9UL8XYgTuMeySk1zrNFl8LJX17H4KOzEoDax7kxLigTbNo/YiMwv1at6NTCkx04hzyJwDpardehL/7CUfQOk03CH4SHbYuE3e3MwNRimAf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723379770; c=relaxed/simple;
	bh=mLHtvN1eea8QDzL3lXgzVyB/+flGjstslAbBua7mQDw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=W1EdwMyYtSsJvIACkvXl9PP4PvVCSymLP6prxTNO3A2aqIx7rOJP2dFftENsn9XVHDCwO6JmakSAQCeysIPMT21NqEeqK4MHZq8O1ND6iKuZwsFREgZ6ZlFFP6E9KcfWM6ZIWNw/X9zvA0ULf+x+wiF6wv9+796jftFrzRKUv3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1723379770;
	bh=mLHtvN1eea8QDzL3lXgzVyB/+flGjstslAbBua7mQDw=;
	h=Subject:From:To:Date:From;
	b=C10++riYomy/+P2gdVZMQhMo8ollbKiJnPkWN2KZvrFxNW7BVkPopnAOKq2VX/rb4
	 sL1KudD+ONPy/sqNnKlhwGa53F9Gvy2g6Td9E2rgbThf6ZFVmK4oqMI+fYnz2WgQq7
	 fZYwk5d+g10uJua21zFomsCnNRyIRvmW3D7IGDSg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7265C32786
	for <linux-kernel-announce@vger.kernel.org>; Sun, 11 Aug 2024 12:36:09 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B7CEB3823358
	for <linux-kernel-announce@vger.kernel.org>; Sun, 11 Aug 2024 12:36:09 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.10.4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 11 Aug 2024 12:36:08 +0000
Message-Id: <20240811123608.release-6.10.4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.10.4
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.4.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.4.xz

Linux kernel version 6.10.4 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.4.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.4.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.4.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.10.4/v6.10.3

