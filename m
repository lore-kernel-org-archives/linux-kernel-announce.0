Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75693DBBB
	for <linux-kernel-announce@vger.kernel.org>; Sun, 11 Feb 2024 21:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707685538; cv=none; b=ML4EcE7K36IOQlNqyS0pCX+SQZldYA9OKf1GSwiajGw/HCamb43d4ecnT+PDKJXw0dO/YHkd5cKLsS+ScyiDHfk+kYGWCrdPJqTerkT4XMtIO9TpBLw1pvRRqcREtvPURJJDVr08J1er0+grJ9f3FLpgKkfB6/+HHWMV7G9nvAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707685538; c=relaxed/simple;
	bh=9JyH2CK1KWndodA1eg4z5AmKqASB6cmCDh9u1eSYVtU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=UrVsqRmDSKzGehOkZ4j9unOR31mC7HjH2Gdx6Kfj9uTrIBiS7mc3dnFGoMdVGBIDhb6TDaY8u1J34GgBlQ1le3yDR9C1tGi7zCvtrruw057IlRCR0Ferl+fppRfWbFDmc3nS4vdV0DRe6D0E/wEhZ30MMLD41OLRXes7RyhG+HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1707685538;
	bh=9JyH2CK1KWndodA1eg4z5AmKqASB6cmCDh9u1eSYVtU=;
	h=Subject:From:To:Date:From;
	b=i3oJO0uqUG0h1cjXVBUXrf+VE9AMZjEe+Nl9HUpxBhW0UmCxrfLidvVSeddfzNV37
	 601ZQ3ybanju8kj5Yua8KzJGV7NPrgnIM+8Slv9jfPEciBa6ykrft9prWKjqQiqlUo
	 IOI8DTznFK3ZBWAT3dvB42alrECwWmoUIy5uSuf0=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EC17C433F1
	for <linux-kernel-announce@vger.kernel.org>; Sun, 11 Feb 2024 21:05:38 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 53BB4D84BC4
	for <linux-kernel-announce@vger.kernel.org>; Sun, 11 Feb 2024 21:05:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.8-rc4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 11 Feb 2024 21:05:38 +0000
Message-Id: <20240211210538.release-6.8-rc4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.8-rc4
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.8-rc4.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.8-rc4/v6.7

Linux kernel version 6.8-rc4 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.8-rc4.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.8-rc4/v6.7

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.8-rc4/v6.8-rc3

