Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526CD6BB5B
	for <linux-kernel-announce@vger.kernel.org>; Sun, 20 Oct 2024 23:04:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729465441; cv=none; b=l1vO9h+6dptcxKPoAuUYmzFvWSTJX5VjVCGPMVfJvD3mRGHAVS6+6hsDxaWjBuT/uaYZxIO1RAOh5612AhusvCm3lgaXEjekjxBeZEtgPp9uhFigMhvIAExXws+W3G7u7BtEhomTovlU/gHhr2Z7v61oFqSBKus6LuNlg/LJz0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729465441; c=relaxed/simple;
	bh=RIRu7Iogizgw0DAGvgilt7eSoidGJg4erRfOG2D55U8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ub2CwXorSl2vDO8rNFAjvOe6aaXmfG1tsEVR3VOWMwomLouNX0ODR9ozvHCWbPlckVec7C3ip5NW/WeEgPD/3BnCMojudP3CB/LrZq6A789wbk60uwmKHuVSjeVXtUyVRQqxOkTjWv/OVEGdLDgQamdoTzwILG0VR65VwMDyQmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1729465441;
	bh=RIRu7Iogizgw0DAGvgilt7eSoidGJg4erRfOG2D55U8=;
	h=Subject:From:To:Date:From;
	b=D153pLfdsUwshBuqhj0AAqEDYsH8qu46gvTiec0KBGQlCGDixkqy0L2dqV1GB84FR
	 BOdn6X8S076c0cTQH6EASUTV3Dn43O7tv7tt0AbdQ83QN548Be5rP7vY4hx4brGgpG
	 tQRnAcflL2Dt1ZxfIcj9DVOCv7qJbDTJMgQi/YZY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07864C4CEC6
	for <linux-kernel-announce@vger.kernel.org>; Sun, 20 Oct 2024 23:04:01 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EF9DD38111D2
	for <linux-kernel-announce@vger.kernel.org>; Sun, 20 Oct 2024 23:04:07 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12-rc4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 20 Oct 2024 23:04:06 +0000
Message-Id: <20241020230406.release-6.12-rc4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12-rc4
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.12-rc4.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.12-rc4/v6.11

Linux kernel version 6.12-rc4 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.12-rc4.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.12-rc4/v6.11

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.12-rc4/v6.12-rc3

