Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F71128C009
	for <linux-kernel-announce@vger.kernel.org>; Sun, 20 Sep 2026 21:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789938463; cv=none; b=VNprGWUJRa4Y+LaifKAwRWQtBz8g0Gk1c0/kzjxXnaE2I4vqzoppJu6pzs5myla0DhWiXRCgnEoRuh3To9Pb9pHh/iuPiemHAgktQx/PQxNwlfPt++kbJ1x8PLP+KAlC6Qd3mRnfRGEBFf1ZXzJKCpthizd9hztOj4uYWwLGPoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789938463; c=relaxed/simple;
	bh=UL9HqN2yoisyP16rgn2CjDeZv7aL6DEaYYOkr5YqSIU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=CLu140v18YNXVNcyOoyXAOcTA86vXg5ADx6OjyrIEiLCmtrpyyuwFycJdT9ox/nKaBNyZ19axSzmfcIFFAUrTAmU7ItcL7nhi+HcFtJ199qpQFC7DtWhjxooCD5+AsSYv3sHxdzHxwOCNKq2KohP8kgvD4BRdvtWvjqOlZruTDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1789938463;
	bh=UL9HqN2yoisyP16rgn2CjDeZv7aL6DEaYYOkr5YqSIU=;
	h=Subject:From:To:Date:From;
	b=MokdnmFU5RI4sz3xdlJo3mQ8hVXk18Scts9ufsGf9yOzeueFbSVO6LpkcWlZLNnl3
	 rj+lDjJmwOhXMLpmD1lQ69IW1QyQGp7+6OYC2bZCEynbk7NjlvIE/IugD8uAerAzr9
	 sJZPG3i6HSCwl3DmNky5DnyA5PCCzbVirNtikAyc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8B551F000FF
	for <linux-kernel-announce@vger.kernel.org>; Sun, 20 Sep 2026 21:07:41 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D366C39253E5
	for <linux-kernel-announce@vger.kernel.org>; Sun, 20 Sep 2026 21:06:34 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.3-rc4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 20 Sep 2026 21:06:33 +0000
Message-Id: <20260920210633.release-7.3-rc4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.3-rc4
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.3-rc4.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.3-rc4/v7.2

Linux kernel version 7.3-rc4 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.3-rc4.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.3-rc4/v7.2

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.3-rc4/v7.3-rc3

