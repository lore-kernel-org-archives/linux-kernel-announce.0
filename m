Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392E12629C
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Sep 2025 12:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756989936; cv=none; b=aXNUfcVPM3bPUpmjnL2F358aSMOjvGOkQGeWVoW3yutz4hiFPPGChybEdcfwMYJap3g4JoaW5XylG05bcP4d2vn3Q/+RhbAm0iY/9WtDuU/cHIFdKltpneUbMwOsz8uBLD0s0vd2zdGL+N+IQEi93VRN++AJt9NOmsQ/3rdoJbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756989936; c=relaxed/simple;
	bh=sLZNi2xp1/dMFLtQE2U6FrsnyNJ2gPLuQ2g6j2rqYSA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=dOVSsNavWxAJ9xzP/eJohb3CZutK4MDEsFmtUnUO6U9j0FybndR9IrHpSkmT8gIly5jRtrV0xbFjh1wzisqdZ6oTLGiWyh8fXNWK2aALe1VY3ikYIS3Gye74oFpxqUKNISbKlf0sYWEHP8XjaCvgDY6gYc4acB4PRTqX0QVYch8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1756989936;
	bh=sLZNi2xp1/dMFLtQE2U6FrsnyNJ2gPLuQ2g6j2rqYSA=;
	h=Subject:From:To:Date:From;
	b=lVtXp5GGcUBooruGNPECGmfWpgd1Rl7I7b46gJTLUGewkFKh7qziK++cZY3EhqTWi
	 c0RhvDPKimx/3Gx1Bc3BhpgiUmu6biDff6sPRrZs1UAAEu/w1+CBTcT4xR6fs4Und0
	 TKp0SB/jVLjZ5v1I+jUh6xUKWhGQE3ny5nkzyauY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD6FBC4CEF0
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Sep 2025 12:45:35 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B2E1F383BF69
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Sep 2025 12:45:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.191 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 04 Sep 2025 12:45:40 +0000
Message-Id: <20250904124540.release-5.15.191@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.191
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.191.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.191.xz

Linux kernel version 5.15.191 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.191.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.191.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.191.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.191/v5.15.190

