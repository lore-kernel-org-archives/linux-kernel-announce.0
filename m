Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE92D33DB
	for <linux-kernel-announce@vger.kernel.org>; Mon,  3 Feb 2025 00:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738543992; cv=none; b=fNvS3bb125QlkaNPlKePxGPG/vEUX4kaRbA6pYOLCG25fESD8kRLTBCrU3pzrqRP5Z5uCunPjKF9y/aytRYTcxUWlYI4E+ijGglISe/YbC2+MszWPKrL+pfjbcENt0CjubZIhqmwKmGMlZ8gBdz7nOg7CmFHR32k3AQyjSp34PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738543992; c=relaxed/simple;
	bh=2sHb0EqOmAdKgOF1RRBDV3xS6uEkHRfiYMNPqsx6BK0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=WNnR+ye5qU86ANQoUeEcoIEEejWD8HQpsC7kjBBruQ9XkEMdxm0x0PSUhIOqKhWwuTYz7gInI67LHdzW4EO5H7BYFjWCtFszH8hOUi4LUIed0gvUOPoIf+TnLUNZPwAYgwl72hY0cdG00DSuZ2QvOdafqftRBEdkwqyuBrBnGOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1738543992;
	bh=2sHb0EqOmAdKgOF1RRBDV3xS6uEkHRfiYMNPqsx6BK0=;
	h=Subject:From:To:Date:From;
	b=CtnVb8MFLl5ZvqSoNgk6sN2iswcr7F19yMCAoJqOdJVNix3do1drL9xGjdYytPAyQ
	 imfSJfwNT2kBP11TDX+8t1btzE1hRbkDHrdMBa+vQBwCPIXGb9rgR+RtnLBW2GeuyB
	 OdvgSrWrLdg8OuBtcW1PAizD8E5w1cR0d5aNN4Jw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 408E1C4CED1
	for <linux-kernel-announce@vger.kernel.org>; Mon,  3 Feb 2025 00:53:12 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3815B380AA70
	for <linux-kernel-announce@vger.kernel.org>; Mon,  3 Feb 2025 00:53:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.14-rc1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 03 Feb 2025 00:53:38 +0000
Message-Id: <20250203005338.release-6.14-rc1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.14-rc1
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.14-rc1.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.14-rc1/v6.13

Linux kernel version 6.14-rc1 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.14-rc1.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.14-rc1/v6.13

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.14-rc1/v6.13

