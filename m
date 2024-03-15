Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFA1524C9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Mar 2024 19:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710531648; cv=none; b=j5/FMmyki8U4zhjQJt+hQI//MvrpJNXkL5W0HkPTfuq/h/eVGDWmIQ+Xu78K16F7ix4GjI25BjUGcootXfibIlN8jDzvRB6puTE8b5/NN7IkXqhuLODc/8pOBhl9iRbViMgpNZzCG3Mh76YJrX3o/pRIXkcDmS5ex9qMW6RkeZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710531648; c=relaxed/simple;
	bh=ZhVN0nNsNSrkC6WuXyvFBZIDeV0BQ5Y5I5xrwe2NbZA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=dToTWi4QzD7Ox8ETDEJ4c9D82X0QQDlfcBE14tOJB6LUiuetoCN8Iv97MqoFbKRAYi72EOz4PimM+ytvVLCtbbQStc1NlIq9YsA9wWc5Mqhs+NyhcW6mnTiCkIpjoiKLfCLF2Dc215/Emv3Pj65miM4oUNAP1j3R2w4utWDp6mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1710531648;
	bh=ZhVN0nNsNSrkC6WuXyvFBZIDeV0BQ5Y5I5xrwe2NbZA=;
	h=Subject:From:To:Date:From;
	b=PR0BsQx4QYffqfFdTlzHoK3lsbS08O+nsHOkUQTOCnqQSe7XgbJZ2mGjl4rs+sVzm
	 T8wNKel+wpQvXbJnMy9ydoa5XV7cHkaiTJjpKAq+YmguSFGQtThZREHXRtD9i68byl
	 n2/XafWdLS3dxZtpVKOGmBCQmlgFMBqFan6gyOUU=
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5D6EC433F1
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Mar 2024 19:40:47 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id D22A3D84BAE
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Mar 2024 19:40:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.19.310 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 15 Mar 2024 19:40:47 +0000
Message-Id: <20240315194047.release-4.19.310@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.19.310
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.310.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.310.xz

Linux kernel version 4.19.310 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.310.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.310.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.310.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.19.310/v4.19.309

