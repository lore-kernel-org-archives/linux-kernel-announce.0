Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349A3187350
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Jun 2024 12:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718539843; cv=none; b=XYQd1Z45/zHMFF6sRJuJRHmcwJ/BCZP9rYgi64s6ovfEdO2zhOf+htiYx6KNjIGBm2mtHfwNoRXEEJ6NwUPfzz3SCjiC1yH3zdVqg13qVvik+Fe7z1o/luonWou5fnBdOxHZQh+9Qs+6im8VvKo6yn3VKNE15w5ubLuNa6Xl60I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718539843; c=relaxed/simple;
	bh=0UHxqPgzXyIb6spFenfCZ8zcUDoFKsxqrH+olO4pr+E=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=MFBMJEQurkPVJG8/te/5Fk3PnTRUJ8c9oGnBLtmcskHd3d3w/u9T9SXgtQq4P8R5DfGmtaBFhykdatgTxacCdoon/F9a+Yj+FBnWAekSfri9jpofsXL1TjqmR6+OviwqjVZEyMmDj0pz57xkbuwS6j79sWd6YaFR1i/2GBTEkyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1718539843;
	bh=0UHxqPgzXyIb6spFenfCZ8zcUDoFKsxqrH+olO4pr+E=;
	h=Subject:From:To:Date:From;
	b=ox+y+ST8n9tegrvkt14b+qZPEtYqChG4lD23hz71GctrMF/zxz964Ze2qij1VTffJ
	 f20cVUoeub7kEDtzy5XjJirifwg2/p166IUazIBrDZnL2uioNlE1ok61U5fSERzui7
	 2AMZtEHY0cT1tNjbCp1x0jg5THDMsEZfIdjVhjDU=
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3185C2BBFC
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Jun 2024 12:10:42 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id BF4FFC43619
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Jun 2024 12:10:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.34 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 16 Jun 2024 12:10:42 +0000
Message-Id: <20240616121042.release-6.6.34@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.34
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.34.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.34.xz

Linux kernel version 6.6.34 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.34.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.34.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.34.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.34/v6.6.33

