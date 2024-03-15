Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C244CB58
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Mar 2024 19:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710530145; cv=none; b=oxEzsV/iS8dfyMsbDo74sNb48aqFMdBSwZs1IHIoPuKpZ0QA0oZFDYvYGJkAHbJ34mCTwwS+MWRUuQifsbuXiqqvvJbIDDDwhfqDL3ss5nJgp0UpBl1xHoi01qfb3HhXlFQ3lnQDMt66D3hf71O5tujNLeOzst/X5p82gUdDYS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710530145; c=relaxed/simple;
	bh=mWRyFNEDc2dPXVzyqU62fte1pow2atQKSmJjYLXcFfk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=bpnLG/YA3vdmfkLzx2QL9eb9HAZhlm1WliyYUBcuMnjXLV0++jT4RenGOZIqC+nAJtTBpxv6c+yw29NRDDnGO5v6QfdHoc43WJ1M8Fnzd02otvM3Uv16SMGJHC9GNDITDmPUDTwd8rw1NAmcjnICllmVpdDIQrlzEk0mQO1N/kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1710530145;
	bh=mWRyFNEDc2dPXVzyqU62fte1pow2atQKSmJjYLXcFfk=;
	h=Subject:From:To:Date:From;
	b=sBTT0Uq36oYjH9N76ubaSiJz/rRbhYdbmhNGN1QMA5wZQIcwAPPTImUU9zbxR5JrT
	 Lq7Ys1JNpLgY0oZpOT3gs9aCNTJ8bjIvFHezg+w3M/yu/dspY88ndvOpe8mEdHN5nD
	 knzHt9zwMKwd498Y7opRflm4qOQiPqn8agUXEDnc=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06B11C433F1
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Mar 2024 19:15:45 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id EE675D95060
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Mar 2024 19:15:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.7.10 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 15 Mar 2024 19:15:44 +0000
Message-Id: <20240315191544.release-6.7.10@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.7.10
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.10.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.7.10.xz

Linux kernel version 6.7.10 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.10.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.7.10.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.10.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.7.10/v6.7.9

