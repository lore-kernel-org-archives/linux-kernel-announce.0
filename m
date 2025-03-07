Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98B3B22256E
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Mar 2025 16:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741363510; cv=none; b=cs+E6gwW1saQogGfqvP0PlEeMXKnk4u3xcoEJgqzcG9ZrV2p6tuBp0IE82RR2gWeu2CjPy2F8rL62fNrn0zTgosL3T30y8dHkXhU1aCjCsN7y0xjWQMmTs4z57u6vQtVRGn86xYW0qAXpMKD+7vbIbmStXDVdNXSydb727Qg7HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741363510; c=relaxed/simple;
	bh=OAko+ycIdaEN5jZrKXzU/GBTa4TjIhSFOjnGTMPZuC0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=kCt7T7PH3mmMllvfEuMY7zQbLgaWwQ36MxvdFFDcIefdxTW+CabDGvz4ZUEW+AsHx81FPhNQDvQ/lijL6JZbdEoC07fHf0DW6TVlQFcZNod5L9GDCZQDE0NMak1t/h9yag9By8EcBFtWeGUOFEJVw+HqoH35RfdvACDQiDYbG1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1741363510;
	bh=OAko+ycIdaEN5jZrKXzU/GBTa4TjIhSFOjnGTMPZuC0=;
	h=Subject:From:To:Date:From;
	b=ixrOmpRa7/AQsj2F6I7grvr/jOI4BwYYLILsRok1GKi8r51U1rmSf3WWvfsyB72Sr
	 0WxsxtMw0q1rkZAMDQdHIz8MyT7PNmpezr0Z9Hi2fFJs91ojmXaYJScx6v2CuwTHR3
	 3BO0UfJvFTZh65TqEZ4dyg9FMsBrMTbczQz4Hp+k=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F6A0C4CED1
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Mar 2025 16:05:10 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B6C3F380CFD7
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Mar 2025 16:05:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.81 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 07 Mar 2025 16:05:43 +0000
Message-Id: <20250307160543.release-6.6.81@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.81
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.81.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.81.xz

Linux kernel version 6.6.81 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.81.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.81.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.81.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.81/v6.6.80

