Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AC1B265CC1
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Mar 2025 12:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741868708; cv=none; b=GS6xJ4mL2lDCb6iNJWgW2rjIHrJ4RikDgH3GQGMiUthNfE2BzzXex04pVdKfmUnE1NT24rKtjsAC1CMhAQMVAH4ln+GTBp8VK59Q0TXKJ+V1lPykv7RHtyryjuz+n4io85msqivvhp90Dh4F8eeNxCZEyyrO/SVV18OB4lmPv7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741868708; c=relaxed/simple;
	bh=J6M7VdvEHGDrAndbirEy3JUaVg+OcQPJAKbrcJNW1D8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=sQ+uJvo8vFvRADkQJDTFttb6NpriIz1xCWcMCHzet4gzmewEfvwxt+GeCkSTib3bD5jRNDscczEb/VvAfZbXJcu4EDK2EzlSUHRVzD0nAwSaHN9PpUvGaIvSn5FyFi8G3PfcXRRrZclU9QlcxgJXAx1tzA24Nbi8oOu/ypuWLn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1741868708;
	bh=J6M7VdvEHGDrAndbirEy3JUaVg+OcQPJAKbrcJNW1D8=;
	h=Subject:From:To:Date:From;
	b=rwumgKQyirwjU2aWbjvp82tx4s/5U1hKDx7l8zxL53DFjUhhIo6EgQNWmURTorzzd
	 KDVlfaQsogd6gRYCVcH+H9Lw0PyFgWe+pHHrZByWf2aoqvaRAuCXHtEqBpddF35kFK
	 FE9OnGPmKdt3iZWjzX2oU0T2Di0dH1+TA2f1bgdY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A7C6C4CEE5
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Mar 2025 12:25:08 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B267F3806651
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Mar 2025 12:25:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.19 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 13 Mar 2025 12:25:42 +0000
Message-Id: <20250313122542.release-6.12.19@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.19
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.19.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.19.xz

Linux kernel version 6.12.19 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.19.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.19.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.19.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.19/v6.12.18

