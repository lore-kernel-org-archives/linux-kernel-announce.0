Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76C7817B425
	for <linux-kernel-announce@vger.kernel.org>; Mon,  5 May 2025 09:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746437098; cv=none; b=tfat+K0zVbbW9++WkR1m8MEDzP2pJP/TVgNZx91gwRBqVTyPZqKoHJqiRBGBRrw9mZh0OO4D32ReZa/NluxvRx7yd8U7cLoLMsRLLaITb7SI3TCK3f0w+UUgmbA220zTA0+TCx4DTbq4xVty7mZiazDf8XibGPPpZ0pP+qXZ3HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746437098; c=relaxed/simple;
	bh=oxixIxrmWerav1i7SKYq/MOZTgd1MpHgcRN4Gl/1WLo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Pu36fPvVxlOLlSIpa6fXGSnSaUpe3HRfv4j7qRDod7ad3KOOe9NA8EuwqW28q6EmREdxbttk5vyt9zHYchFL4nU4/v8WEGzZ2iPoHUB2lilaZ5McTEAKBWAlNMO9LIG6A4X9JBXV+wyBu0cxc7JXYMgTWtNoRvtLPucuKPraqIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1746437098;
	bh=oxixIxrmWerav1i7SKYq/MOZTgd1MpHgcRN4Gl/1WLo=;
	h=Subject:From:To:Date:From;
	b=oUIk7qFSuxvHmxTL++3Oegzk8EK+t9Zrpqoyh0V+Nw2sP6/hFtp7NCA7dxCkEq4hh
	 Tpt+cAvFvE77vUmpFTwmxaFvlip6zz/xEXNOSTicHTxjOvY+dEgwOnZBNWL1/dBZt+
	 nC2sakhGl/Mdfu7BL6BUO4V7D8pqlpk6ZBEZMZSM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04DF3C4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Mon,  5 May 2025 09:24:58 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 74CEB3822D61
	for <linux-kernel-announce@vger.kernel.org>; Mon,  5 May 2025 09:25:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.27 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 05 May 2025 09:25:36 +0000
Message-Id: <20250505092536.release-6.12.27@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.27
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.27.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.27.xz

Linux kernel version 6.12.27 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.27.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.27.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.27.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.27/v6.12.26

