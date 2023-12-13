Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2730228E20
	for <linux-kernel-announce@vger.kernel.org>; Wed, 13 Dec 2023 17:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1702489242;
	bh=JBGjarK4/Q5NHXHfO2+F2Mi3XV1IHs5fg2pc1jJR6l0=;
	h=Subject:From:To:Date:From;
	b=Ybrm2wkH4mv7C5GTaD3cgPdAM0edkWOE+nc9I4DQI5ejgq3PzcTWHf3vKlX3xaL3b
	 0I5zCAjaNOGd3Awl1oD0CW2gEjwlBzs7pVla4dNaVt+Zbd5DqeanriPAdXAwg/B9MU
	 xwsWCCaJBUBvjzt3qD7vmZ+hZHmhDXpvW3Z8pmgo=
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A27C433C8
	for <linux-kernel-announce@vger.kernel.org>; Wed, 13 Dec 2023 17:40:41 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 7C192C4314C
	for <linux-kernel-announce@vger.kernel.org>; Wed, 13 Dec 2023 17:40:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.204 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 13 Dec 2023 17:40:41 +0000
Message-Id: <20231213174041.release-5.10.204@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.204
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.204.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.204.xz

Linux kernel version 5.10.204 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.204.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.204.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.204.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.204/v5.10.203

