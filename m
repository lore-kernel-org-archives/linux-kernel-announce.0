Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D3C22626
	for <linux-kernel-announce@vger.kernel.org>; Sun, 11 Aug 2024 11:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723374372; cv=none; b=mQowJHdtIDjPxQ4W5L9Xf0zSkmLLg/bUtnX+zPyHTCm/rpSJ/NFuNUmMYUm94sO0ySnCbD1yltnxDv+ap3S1tv7xVDY68tpBlnBL5l9gMgS8e5iqPYyqPKBXJD1EfZbcutL2l26OQNejNZAj3p7il48p7fjJBi+ZIMT8NgVaYZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723374372; c=relaxed/simple;
	bh=WfryRiqrNFXgRcGDxc8Uz1pk18oojXX2IdwCgdSlhdE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=sv7lSUyZTKkM1WPQ9ur+mh4eZg5c7/Ir0wi0Z1MJKez1TzpC9NZvkIRnbeM1gtZTTKKx+x3/yjmFBMz4bQRFEkcgliOD4MVNV7tQQROmKPSaVYpi04tB1wxwvibQoaeGh0ffZiE+Fs85uFu1Ta0tqtD+S31mF+TMHvZIX3uBp4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1723374372;
	bh=WfryRiqrNFXgRcGDxc8Uz1pk18oojXX2IdwCgdSlhdE=;
	h=Subject:From:To:Date:From;
	b=u7GAZ/UPIiXTF++sOiewCl4piCe2iMwbqFmX7a4wQrZtLGD72ofxXTo9R3WtTZMvh
	 vNojxGVXpoDPkba4hNbyVkn/8JDasJ66rWU9Bp2otkFDq5wQIYr1TDu5sJ7pX6N7wy
	 W7CAgB5robkbZNjuDcCTsqQrxaAfvHqvKD+UAE/Q=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D478C32786
	for <linux-kernel-announce@vger.kernel.org>; Sun, 11 Aug 2024 11:06:11 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B33083823358
	for <linux-kernel-announce@vger.kernel.org>; Sun, 11 Aug 2024 11:06:11 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.45 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 11 Aug 2024 11:06:10 +0000
Message-Id: <20240811110610.release-6.6.45@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.45
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.45.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.45.xz

Linux kernel version 6.6.45 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.45.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.45.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.45.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.45/v6.6.44

