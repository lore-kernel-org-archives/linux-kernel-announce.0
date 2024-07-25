Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3FBC172BDB
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jul 2024 08:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721895047; cv=none; b=D4tXjkYOmJgM419ScAO4SWE3Jv5hCikJHD2FLWl+Rnep20xXAQQuaPCw0RZz2AUkUWkGDiH5SQiQ4ZQm6ONGiKbUMVlNUNkif0BGB70A25OKw3piI5C1WxqDFl0w8RjPYHuxEHwNO+s66nXDWUK/Tq1ec8JXTetZeo1tOuiSSwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721895047; c=relaxed/simple;
	bh=h1+GtVSRC83NO4AfL21E7i1c9SX8osPuMJ4JxUYYd6k=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=eeOGsOWZ749V4eCww5o9RWiA3Shwe3Mswl/sFoe/NFm1u5bzaVIfYhtzHSkXUghA7gV53ppd3ll9SoDFeu01bk43w0Z9EDThSf6CTTLrbvqsTEJiAza2TOATc7JWIhrJpBODGs+pTjzpNCwYN8Sxx15L/cYTUwfpbpPkuEJ7vVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1721895047;
	bh=h1+GtVSRC83NO4AfL21E7i1c9SX8osPuMJ4JxUYYd6k=;
	h=Subject:From:To:Date:From;
	b=tw0Pg+0DneCyD9Au+YCee1wf5AVHvmqc8mgFILYO5pcEK7Xa6oGYu0a0MHrZad8zO
	 cQeU+EcDFHAPGQdF2H6gD17ONYX7Ia2QIN2CIG7jU0c6AP8DjdrQe4hu5Fyd2Tfv/7
	 rkTtqZHg6O8ptjhAQM9ROLSrb49xO4LQIJYZSIgs=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76235C4AF0E
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jul 2024 08:10:47 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 66D18C43638
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jul 2024 08:10:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.42 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 25 Jul 2024 08:10:47 +0000
Message-Id: <20240725081047.release-6.6.42@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.42
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.42.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.42.xz

Linux kernel version 6.6.42 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.42.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.42.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.42.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.42/v6.6.41

