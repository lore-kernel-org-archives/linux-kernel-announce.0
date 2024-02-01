Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F9FF3C3C
	for <linux-kernel-announce@vger.kernel.org>; Thu,  1 Feb 2024 00:45:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706748342; cv=none; b=a/CrpaMai5YtRTHzwCyIaQ1zgf0gAPXfCw5JQSHhPl4+A0GcjRwgjlOz3Y6Qg8vH2gw2xogVT5zOk40p5gDuGDsnH2emjgtYDxM6GEw8URkrFc+ucjD0snPzWrKzHTe91aZ9caR5bJT4KGxeNYfxc0WZx/6CQu9vdiOLJzgScNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706748342; c=relaxed/simple;
	bh=LNvKNEnUyBEwA5BE1QVz5RkrCRtyUS2GBppLpI+gaEo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=gJ2hNTPIiHIzUdO0EB7uqv7NYMU6HjcYaD89iorncZ0qLQI+1pKzCzTWilbPydji66rlztaOj1gTvDdllul0RW2iEe/88phk6+pUtIK9ZK99dyp+bbz1Vsbk/X5gZWs2HA4Mc2tt5fuF95hFCRP6FhFpXh9N/CRpXchEaEP9ZeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1706748342;
	bh=LNvKNEnUyBEwA5BE1QVz5RkrCRtyUS2GBppLpI+gaEo=;
	h=Subject:From:To:Date:From;
	b=eRIQEu5GzcWdfAHpS2C9+XktZss04rcHCgOWEMgsbtEB0EN8wxw/5fjDewwVZoxBa
	 nqnOS2G7mpYzrtF8oXVpSA5nWXMNnFxPlu8QrKYllONaRMFJ3uvmtEPyq1PuyZJyXg
	 nQu9vsxw8Vu1fLGK+QFMFIc8uCOpFoLKqUyHFm48=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7962CC433F1
	for <linux-kernel-announce@vger.kernel.org>; Thu,  1 Feb 2024 00:45:42 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 60926C4166F
	for <linux-kernel-announce@vger.kernel.org>; Thu,  1 Feb 2024 00:45:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.7.3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 01 Feb 2024 00:45:42 +0000
Message-Id: <20240201004542.release-6.7.3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.7.3
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.3.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.7.3.xz

Linux kernel version 6.7.3 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.3.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.7.3.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.3.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.7.3/v6.7.2

