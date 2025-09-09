Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7E29272807
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Sep 2025 17:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757438737; cv=none; b=qWkN9PEz471rdzSbTVrxCe69fY8/EIUYQZ829CjpGYaroNZV9bN6EUOQmto/zkPjOo4W73QtHntfKvlpL5ziAZKSq1Jc1NGbAhS2Lhp77n40j4NatcshYjWW1FbEwKff6wZ1R7f4L5dssrZYTG+z9cSxyK+cIhKosQcxNaveALA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757438737; c=relaxed/simple;
	bh=xD9Mujt1IswDJGGpVsHDFXAuciQxdvkcF8+eRN1Lqgc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=XU7Qk5W+QFRWkZ+qxYTdtbQxXmqoYoqMwbFfUJp0bqOXAtQvK1IoTwLSNb55/CqrHC2i8cFAfrZgydaUvslfbvHJl40v3R5AtQvhFTJSY3KphI2oeejzXGx58ElRYA2yf/Jqe5XQ0aijfolAlyOl5D7QPn+Vmlc0EWNn3LAvVUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1757438737;
	bh=xD9Mujt1IswDJGGpVsHDFXAuciQxdvkcF8+eRN1Lqgc=;
	h=Subject:From:To:Date:From;
	b=EMqgNobtswdSbnjzrt/EoOgnfu9136txdS30Ee/Oplex7Fm20ttjV/Yb43jLcp+ou
	 X5tJjAzgzgk7DYypLWiQqWQyPwa0ZXoDX3fMe7fJGokxDOxPK+VnXSJWqVVJyd9Y78
	 cLQD0kr05vRPxSD8ZZJNraJueGoaXOhUokGtI/xI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49D70C4CEF4
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Sep 2025 17:25:37 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B1CF8383BF6F
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Sep 2025 17:25:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.16.6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 09 Sep 2025 17:25:40 +0000
Message-Id: <20250909172540.release-6.16.6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.16.6
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.6.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.16.6.xz

Linux kernel version 6.16.6 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.6.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.16.6.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.6.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.16.6/v6.16.5

