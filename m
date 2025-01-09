Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C03621764E
	for <linux-kernel-announce@vger.kernel.org>; Thu,  9 Jan 2025 12:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736427321; cv=none; b=aAJGR+5aSu2PFlqU1kpQj9XPs2AXRd5dxGHQBokC07sSaRZ/kvWvqtliN/7XgBSQQZuWuKOWEM5LgteW5qLjAMaH4uVLdy+ZERNV6Qv20+IAKCL2/L9W9CzHGU3DzYYywvrhxd24aiExcvsnUfmWy2waUivgHeK3SnYhCbW1NQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736427321; c=relaxed/simple;
	bh=TSmi3VV+laxYVEvKT5vA2Noe0CChPCUSyA+9Uxvj9rw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=tdVsqhUXUIcHD9bRDluXActFPm0ZyTe1bYvZrmkq0/FpBJvpC+X8W8uIOn12DeQbS0dn+TBGlmzUX5isZSvssh7bTlfAv6KjyURQl2Mj0FQIEzBwygC006F4YppwoiLotOueHWttkZFNOrbxL68Gg0YYCj+F0GFLG+D2WJB49XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1736427321;
	bh=TSmi3VV+laxYVEvKT5vA2Noe0CChPCUSyA+9Uxvj9rw=;
	h=Subject:From:To:Date:From;
	b=mhPs5FFmlwj7z2HK06Crpb0IknQmSUBSGhLoZm72X3dA/RVmpP9xtbecq/8b8V84+
	 MubsFqog9stJeQXl/kwCL2lYQUx/KkS1/9eyYAqDHRcO0FCFTZwY+WZ2/OIpO0hFZs
	 4y74fRKzMV8IPKaT81qwRhy9eippxXjD5eh3VoSk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4AED2C4CED3
	for <linux-kernel-announce@vger.kernel.org>; Thu,  9 Jan 2025 12:55:21 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 33C353805DB2
	for <linux-kernel-announce@vger.kernel.org>; Thu,  9 Jan 2025 12:55:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.124 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 09 Jan 2025 12:55:42 +0000
Message-Id: <20250109125542.release-6.1.124@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.124
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.124.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.124.xz

Linux kernel version 6.1.124 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.124.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.124.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.124.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.124/v6.1.123

