Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF70E1E8324
	for <linux-kernel-announce@vger.kernel.org>; Thu, 28 Aug 2025 15:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756393233; cv=none; b=minubKnUTIAcBEzteGFZI2uOT4KlDVG7htdloRfWNWjDriDwMngNvDJb3ek1yJ9Joc8+rQvddLJ/CNWMQ+d4tv1g4vRchLvtnfzoYTS3mN79hg2rDjX104PfT/uN814EVtjnLEXrc9mv8tJlvKlImSzF55t12VxzWX4nsjtpJBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756393233; c=relaxed/simple;
	bh=Aoip+mRDzTO3fdSKzUBcNG4OHzIrtxldRbt6nAdCBCc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=V3Cx7p4IOk9KrLAABIYv5sDpR5RWE5/qEkE3kjcPnu3PtobOvulKWgmfL9cah3M6rqJ2/v+3fRTfPggB4d0FicN7uNFKLsXtHDED2K7aii9tPLlUZNonBo/+a3l6JoIEyUlBp6TQ+EkbTpb22bUMYqkCO/ZXYN7zhelE+QeGdz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1756393233;
	bh=Aoip+mRDzTO3fdSKzUBcNG4OHzIrtxldRbt6nAdCBCc=;
	h=Subject:From:To:Date:From;
	b=jrVvQ//DLNAUHXjgZCA2vTsdN92wsaHE6+R8EyP1VLTXtnc8Jdnbalcn6sfU5MeH3
	 7wxH2fR8gXu3fnjxXlowtmgm7FFFe40SwUC3CJi2OBfO+/T4uqCQNnDxYeUNEWJSjw
	 RfAeldwu6+DBTjPmKAy5O1kjqzumGbjPECBsn5ZI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DCEEC4CEEB
	for <linux-kernel-announce@vger.kernel.org>; Thu, 28 Aug 2025 15:00:33 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B213A383BF64
	for <linux-kernel-announce@vger.kernel.org>; Thu, 28 Aug 2025 15:00:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.44 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 28 Aug 2025 15:00:40 +0000
Message-Id: <20250828150040.release-6.12.44@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.44
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.44.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.44.xz

Linux kernel version 6.12.44 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.44.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.44.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.44.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.44/v6.12.43

