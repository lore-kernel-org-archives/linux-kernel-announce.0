Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF3029CE1
	for <linux-kernel-announce@vger.kernel.org>; Sun,  3 Mar 2024 21:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709502104; cv=none; b=OVZQwIhf7zeKU1UI0sAucZM5RqGohrWEky7gd06WCdDbYvxssFeAUdGtbqjrzeqQOBbPSMvLZxq/uuVej/Cjofiqrnoyy4WIIskx3k7awcB55EqfHCoeuMUl9/ndwNAGR0z1b1mYxnaLMCWMbPTZZR7Xi0jyZpoSUFBmGbXxgmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709502104; c=relaxed/simple;
	bh=7mfD+VHeTqv0zLy8rWu5ATjdA0cYp6NOMOyq3bK2XU8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=PYHvIhGP7mDsNORH0Gtm6p3A4KRsTTfz6PyOm0KA5vyO/tmUoP0g5zO/QQtoj1e39zuLydjHZL6yOlOJ8S0IGdmLoPYqSJ9NJeSPimcSzZgma3l6vAt/2GeTSehk7WkihFqUF38dSG5NPbR3HIkjQXwWJNHE4FvcrIzce3OQm1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1709502104;
	bh=7mfD+VHeTqv0zLy8rWu5ATjdA0cYp6NOMOyq3bK2XU8=;
	h=Subject:From:To:Date:From;
	b=emdjPkHsJB5L1xJtQTrHf1zqis41teiojZ9bJ7LnIlyipHaqO+n9MFCz9BNYwluSW
	 Z5ttR1sNaJhpIMLLVjbjZs5TJ4pEqmJPJ3AavvQjWzP90EHILlT9lRWSB1joLfCnmy
	 JZaithqCIDtWJYoD7j1p92pOgfzzLqMw4tbROTXQ=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1128AC433F1
	for <linux-kernel-announce@vger.kernel.org>; Sun,  3 Mar 2024 21:41:44 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id EA7D2D9A4B5
	for <linux-kernel-announce@vger.kernel.org>; Sun,  3 Mar 2024 21:41:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.8-rc7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 03 Mar 2024 21:41:43 +0000
Message-Id: <20240303214143.release-6.8-rc7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.8-rc7
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.8-rc7.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.8-rc7/v6.7

Linux kernel version 6.8-rc7 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.8-rc7.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.8-rc7/v6.7

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.8-rc7/v6.8-rc6

