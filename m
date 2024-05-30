Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF21C4D8A1
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 May 2024 08:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717056094; cv=none; b=Pi0l3Y4oGWt9AHfK6Jd3sJsiMP91dUmjYk21JUIf2nPIVkf3gf2xZ+xTrzCyTyt9IUxBficAxrPogOA0eB7Ah0Q+ebqjkH6pl94O7wgQ5wa/top7HSIO/sCApTl4aejoVDG9V/MXr/WAXo2emhsAfy0Z1VfrFdyNkyH3fOkJ5KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717056094; c=relaxed/simple;
	bh=g83UQgDNp7HDojW3gM4zp8PB+zgMpGGCyaU/rCcXrIg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=M9EMGKA4e+gLELaSrkHbnftS2SSwaRAslzvt7KYZtloZmTAh/XCaktF6hnlHqWFqxKLpPkpinIKOmo6Sp0rDeXy/asf4NCqSrDCbnvdy8ym6gyJU0mBh0tTnqus/D0YNGmcS5uaRx80FbTs4OHa7j6yPcDifVttYt23uvqf/Nzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1717056094;
	bh=g83UQgDNp7HDojW3gM4zp8PB+zgMpGGCyaU/rCcXrIg=;
	h=Subject:From:To:Date:From;
	b=jOHp6nJ/s1k5Gubibx1OrMwfiQ6g8ajETC7YWpizq+VKDIoICykEFDhiSvqlBS30K
	 NBkFVgANUV+/jfC7ZwviL5PfuQgpicEOR336VXY0v48v0xxxjPRpMQFZo7I2dljFmC
	 sDjKASJb1lEbJSheXlEeZAv7VJR4OQfmaaGw4LxU=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5D5A8C3277B
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 May 2024 08:01:34 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 4E529CF21F3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 May 2024 08:01:34 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.9.3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 30 May 2024 08:01:34 +0000
Message-Id: <20240530080134.release-6.9.3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.9.3
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.3.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.9.3.xz

Linux kernel version 6.9.3 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.3.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.9.3.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.3.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.9.3/v6.9.2

