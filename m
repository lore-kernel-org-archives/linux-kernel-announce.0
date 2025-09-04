Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF14A2FF177
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Sep 2025 13:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756990841; cv=none; b=FdmS1ffjf+w9yDdMkbM+R+YuGwvqkpXwfgwdpbSRiS1vMoqMERIb53og1VIBaywZOAzyubcnBoGQ/69PsG2pJnVnOAgC0OtHmbl4QDdQCrunm4wQMk/RUqJic4UhbxkyJeVCt5f+SYj0hPzEWcVKSHglAqNOR/G0WUSpkLWPgvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756990841; c=relaxed/simple;
	bh=vVQd34aJBPaqk0YguVdxujYzQO8G3GAmxhAH6Z3bQH4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=on9rzILaje/0HiXdFoHo5fDhfoANBbeL/EAXKYOUGdxgfoTgFEeBIwLrPbZn1mnUmGV2tC6VGijblaKxxcTD1G7zvsJTitNSu6Wd2TVtFQAfpPAEp1MO1PXj6/KzHxVdayOJMSQobC1C5E8tDFMeVQOjb7XJm4HzeoH38VxV76A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1756990841;
	bh=vVQd34aJBPaqk0YguVdxujYzQO8G3GAmxhAH6Z3bQH4=;
	h=Subject:From:To:Date:From;
	b=JKK2WiKCXwP811pWqEifDZCXwm7wWuojGfkmbjaRUlQyi48a+TqBgkTIwjYDxHzM2
	 NMGs7BNMTzyGZXIEiUNVNUae7GkovNKSNKo9is1hqU6LCJL8r4trkXBEDCMFtX2ZF3
	 yQaXIJTlbUk0TewPUo/5q7dbd54767wvS8wpI9Pg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EEE7C4CEF0
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Sep 2025 13:00:41 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3ADD3383BF6F
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Sep 2025 13:00:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.242 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 04 Sep 2025 13:00:45 +0000
Message-Id: <20250904130045.release-5.10.242@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.242
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.242.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.242.xz

Linux kernel version 5.10.242 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.242.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.242.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.242.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.242/v5.10.241

